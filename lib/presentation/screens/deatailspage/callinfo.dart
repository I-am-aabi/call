
import 'package:call/presentation/core.dart';
import 'package:call/presentation/screens/deatailspage/widgets/appbar2.dart';
import 'package:call/presentation/screens/deatailspage/widgets/details.dart';
import 'package:call_log/call_log.dart';
import 'package:flutter/material.dart';

class Callinfo extends StatelessWidget {
  const Callinfo({super.key, required this.log});
final CallLogEntry log;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children:  [
            const Infoappbar(),
            Calldetails(log: log),
          ],
        ),
      )),
    );
  }
}