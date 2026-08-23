import 'dart:convert';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:telephony/telephony.dart';
import 'package:dio/dio.dart';
import '../../core/constants/api_constants.dart';
import '../../domain/models/sms_transaction.dart';
import 'sms_pending_db.dart';

typedef OnSmsDetected = void Function(SmsTransaction txn);

class SmsScannerService {
  static final SmsScannerService instance = SmsScannerService._();
  SmsScannerService._();

  final _telephony = Telephony.instance;
  OnSmsDetected? onDetected;

  bool get isAndroid => !kIsWeb && Platform.isAndroid;

  Future<bool> requestPermissions() async {
    if (!isAndroid) return false;
    final status = await [
      Permission.sms,
      Permission.notification,
    ].request();
    return status[Permission.sms]?.isGranted ?? false;
  }

  // Start listening for incoming SMS (foreground)
  Future<void> startListening(Dio dio, OnSmsDetected callback) async {
    if (!isAndroid) return;
    onDetected = callback;
    _telephony.listenIncomingSms(
      onNewMessage: (SmsMessage msg) =>
          _handleSms(dio, msg.body ?? '', msg.address ?? ''),
      onBackgroundMessage: backgroundSmsHandler,
      listenInBackground: true,
    );
  }

  // Scan last 7 days of existing SMS inbox on first launch
  Future<void> scanInbox(Dio dio) async {
    if (!isAndroid) return;
    final granted = await requestPermissions();
    if (!granted) return;

    final since = DateTime.now().subtract(const Duration(days: 7));
    final messages = await _telephony.getInboxSms(
      columns: [SmsColumn.ADDRESS, SmsColumn.BODY, SmsColumn.DATE],
      filter: SmsFilter.where(SmsColumn.DATE)
          .greaterThanOrEqualTo(since.millisecondsSinceEpoch.toString()),
    );

    for (final msg in messages) {
      await _handleSms(dio, msg.body ?? '', msg.address ?? '');
    }
  }

  // Parse a single SMS text (no DB write) — used for iOS paste flow
  Future<SmsTransaction?> parseSingleSms(Dio dio, String text, {String sender = ''}) async {
    if (!_looksFinancial(text, sender)) return null;
    try {
      final response = await dio.post(
        ApiConstants.aiParseSms,
        data: jsonEncode({'text': text, 'sender': sender}),
        options: Options(headers: {'Content-Type': 'application/json'}),
      );
      final data = response.data as Map<String, dynamic>;
      if (data['isTransaction'] != true) return null;
      return SmsTransaction(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        rawSms: text,
        sender: sender,
        amount: (data['amount'] as num).toDouble(),
        type: data['type'] as String? ?? 'expense',
        merchant: data['merchant'] as String?,
        suggestedCategory: data['suggestedCategory'] as String?,
        date: data['date'] as String?,
        confidence: (data['confidence'] as num?)?.toDouble() ?? 0.65,
        detectedAt: DateTime.now(),
      );
    } catch (_) {
      return null;
    }
  }

  Future<void> _handleSms(Dio dio, String body, String sender) async {
    if (body.isEmpty) return;

    // Quick pre-filter — skip non-financial SMS without API call
    if (!_looksFinancial(body, sender)) return;

    // Dedupe — skip if already pending
    final existing = await SmsPendingDb.instance.getPending();
    if (existing.any((e) => e.rawSms == body)) return;

    try {
      final response = await dio.post(
        ApiConstants.aiParseSms,
        data: jsonEncode({'text': body, 'sender': sender}),
        options: Options(headers: {'Content-Type': 'application/json'}),
      );

      final data = response.data as Map<String, dynamic>;
      if (data['isTransaction'] != true) return;

      final txn = SmsTransaction(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        rawSms: body,
        sender: sender,
        amount: (data['amount'] as num).toDouble(),
        type: data['type'] as String? ?? 'expense',
        merchant: data['merchant'] as String?,
        suggestedCategory: data['suggestedCategory'] as String?,
        date: data['date'] as String?,
        confidence: (data['confidence'] as num?)?.toDouble() ?? 0.65,
        detectedAt: DateTime.now(),
      );

      await SmsPendingDb.instance.insert(txn);
      onDetected?.call(txn);
    } catch (_) {
      // Silent fail — don't disrupt user for SMS parsing errors
    }
  }

  bool _looksFinancial(String body, String sender) {
    final combined = '${sender.toLowerCase()} ${body.toLowerCase()}';
    const signals = [
      'debited', 'credited', 'spent', 'balance', 'upi', 'neft',
      'imps', 'rtgs', 'rs.', 'inr', '₹', 'payment', 'txn',
    ];
    return signals.any((s) => combined.contains(s));
  }
}

// Top-level function required by telephony for background handling
@pragma('vm:entry-point')
void backgroundSmsHandler(SmsMessage msg) {
  // Background handler — can't use providers/DI here
  // Just store raw SMS in a simple flag for the next foreground open
  debugPrint('BG SMS from ${msg.address}: ${msg.body?.substring(0, 30)}...');
}
