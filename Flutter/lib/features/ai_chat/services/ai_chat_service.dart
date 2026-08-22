import 'dart:async';
import 'dart:convert';
import 'dart:typed_data';
import 'package:dio/dio.dart';
import '../../../data/api/api_client.dart';
import '../../../core/constants/api_constants.dart';

class AiChatMessage {
  final String role;
  final String content;
  final List<String> tools;

  const AiChatMessage({
    required this.role,
    required this.content,
    this.tools = const [],
  });

  Map<String, dynamic> toJson() => {'role': role, 'content': content};

  AiChatMessage copyWith({String? content, List<String>? tools}) =>
      AiChatMessage(role: role, content: content ?? this.content, tools: tools ?? this.tools);
}

class AiChatToken {
  final String? text;
  final String? tool;
  final bool done;
  final String? error;

  const AiChatToken({this.text, this.tool, this.done = false, this.error});
}

class AiChatService {
  final Dio _dio;

  AiChatService(this._dio);

  Stream<AiChatToken> sendMessage(
    String question,
    List<AiChatMessage> history,
  ) async* {
    final token = await getToken();
    if (token == null) {
      yield const AiChatToken(done: true, error: 'Not authenticated');
      return;
    }

    final historyJson = history.map((m) => m.toJson()).toList();

    late Response<ResponseBody> response;
    try {
      response = await _dio.post<ResponseBody>(
        ApiConstants.aiChat,
        data: {'question': question, 'history': historyJson},
        options: Options(
          responseType: ResponseType.stream,
          receiveTimeout: const Duration(minutes: 3),
          headers: {'Authorization': 'Bearer $token'},
        ),
      );
    } on DioException catch (e) {
      yield AiChatToken(done: true, error: e.message ?? 'Request failed');
      return;
    }

    final stream = response.data!.stream;
    var buffer = '';

    await for (final chunk in stream.cast<Uint8List>()) {
      buffer += utf8.decode(chunk, allowMalformed: true);
      final lines = buffer.split('\n');
      buffer = lines.removeLast(); // keep incomplete last line

      for (final line in lines) {
        if (!line.startsWith('data:')) continue;
        final raw = line.substring(5).trim();
        if (raw.isEmpty) continue;
        try {
          final data = jsonDecode(raw) as Map<String, dynamic>;
          if (data['done'] == true) {
            if (data['error'] != null) {
              yield AiChatToken(done: true, error: data['error'].toString());
            } else {
              yield const AiChatToken(done: true);
            }
            return;
          }
          if (data['tool'] != null) {
            yield AiChatToken(tool: data['tool'].toString());
          } else if (data['token'] != null) {
            yield AiChatToken(text: data['token'].toString());
          }
        } catch (_) {
          // skip malformed SSE line
        }
      }
    }

    yield const AiChatToken(done: true);
  }
}
