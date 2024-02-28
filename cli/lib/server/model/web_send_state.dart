import 'package:cli/server/model/web_send_file.dart';
import 'package:cli/server/model/web_send_session.dart';
import 'package:dart_mappable/dart_mappable.dart';

part 'web_send_state.mapper.dart';

@MappableClass()
class WebSendState with WebSendStateMappable {
  final Map<String, WebSendSession>
      sessions; // session id -> session data, also includes incoming requests
  final Map<String, WebSendFile> files; // file id as key
  final bool autoAccept; // automatically accept incoming requests

  const WebSendState({
    required this.sessions,
    required this.files,
    required this.autoAccept,
  });
}
