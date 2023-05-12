import 'package:call_log/call_log.dart';

Future<Iterable<CallLogEntry>> getCalllogs() {
  return CallLog.get();
}
