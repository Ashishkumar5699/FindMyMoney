import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/data/latest.dart' as tz;
import 'package:timezone/timezone.dart' as tz;

class NotificationService {
  static final NotificationService _instance = NotificationService._();
  factory NotificationService() => _instance;
  NotificationService._();

  final _plugin = FlutterLocalNotificationsPlugin();

  static const _channelId       = 'banebane_main';
  static const _channelName     = 'BKC';
  static const _channelDesc     = 'Plan reminders and daily nudges';
  static const _dailyReminderId = 1;
  static const _planReminderBase = 100; // plan reminders: 100 + planIndex

  Future<void> init() async {
    tz.initializeTimeZones();

    const androidInit = AndroidInitializationSettings('@mipmap/ic_launcher');
    const iosInit = DarwinInitializationSettings(
      requestAlertPermission: true,
      requestBadgePermission: true,
      requestSoundPermission: true,
    );

    await _plugin.initialize(
      const InitializationSettings(android: androidInit, iOS: iosInit),
    );

    await _createAndroidChannel();
    await scheduleDailyNudge();
    debugPrint('[Notifications] initialized');
  }

  Future<void> _createAndroidChannel() async {
    const channel = AndroidNotificationChannel(
      _channelId,
      _channelName,
      description: _channelDesc,
      importance: Importance.high,
    );
    await _plugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
  }

  // Daily nudge at 19:30 local time
  Future<void> scheduleDailyNudge() async {
    await _plugin.cancel(_dailyReminderId);

    final now = tz.TZDateTime.now(tz.local);
    var scheduled = tz.TZDateTime(tz.local, now.year, now.month, now.day, 19, 30);
    if (scheduled.isBefore(now)) {
      scheduled = scheduled.add(const Duration(days: 1));
    }

    await _plugin.zonedSchedule(
      _dailyReminderId,
      '🍻 Time to make plans!',
      'What are you doing tonight? Set up a plan with your crew.',
      scheduled,
      _notifDetails(),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
      matchDateTimeComponents: DateTimeComponents.time,
    );

    debugPrint('[Notifications] daily nudge scheduled for $scheduled');
  }

  // Schedule a 15-min pre-plan reminder for a single plan
  Future<void> schedulePlanReminder({
    required int id,
    required String planTitle,
    required DateTime scheduledAt,
  }) async {
    final reminderTime = scheduledAt.subtract(const Duration(minutes: 15));
    if (reminderTime.isBefore(DateTime.now())) return;

    final tzTime = tz.TZDateTime.from(reminderTime, tz.local);
    final notifId = _planReminderBase + id;

    await _plugin.cancel(notifId);
    await _plugin.zonedSchedule(
      notifId,
      '🍻 $planTitle starts soon!',
      'Your plan begins in 15 minutes. Get ready!',
      tzTime,
      _notifDetails(),
      androidScheduleMode: AndroidScheduleMode.exactAllowWhileIdle,
      uiLocalNotificationDateInterpretation:
          UILocalNotificationDateInterpretation.absoluteTime,
    );

    debugPrint('[Notifications] plan reminder scheduled: "$planTitle" at $tzTime');
  }

  Future<void> cancelPlanReminder(int id) async {
    await _plugin.cancel(_planReminderBase + id);
  }

  NotificationDetails _notifDetails() => const NotificationDetails(
    android: AndroidNotificationDetails(
      _channelId,
      _channelName,
      channelDescription: _channelDesc,
      importance: Importance.high,
      priority: Priority.high,
      icon: '@mipmap/ic_launcher',
    ),
    iOS: DarwinNotificationDetails(
      presentAlert: true,
      presentSound: true,
      presentBadge: true,
    ),
  );
}
