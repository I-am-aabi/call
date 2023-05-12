import 'package:call_log/call_log.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

IconData geticon(CallType call) {
  if (call == CallType.incoming) {
    return Icons.phone_callback;
  } else if (call == CallType.outgoing) {
    return Icons.call_made;
  } else {
    return Icons.phone_missed;
  }
}

String gettitle(String name, String number) {
  if (name.isEmpty || name == null) {
    return number;
  } else {
    return name;
  }
}

String formatDateTime(DateTime dt) =>
    DateFormat('MMM d  h:mm a').format(dt).toString();

String formatDate(DateTime dt) =>
    DateFormat('MM/dd/yyyy').format(dt).toString();

String formatTime(DateTime dt) => DateFormat('h:mm a').format(dt).toString();
