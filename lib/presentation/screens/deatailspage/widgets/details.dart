import 'package:call/presentation/screens/deatailspage/widgets/field_detail.dart';
import 'package:call/presentation/screens/homepage/functions/geticon.dart';
import 'package:call_log/call_log.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Calldetails extends StatelessWidget {
  const Calldetails({super.key, required this.log});
  final CallLogEntry log;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 17, 16, 16),
            blurRadius: 1.0,
            spreadRadius: 1.0,
            offset: Offset(0.0, 0.0),
          ),
        ], borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Field(heading: 'Name:', tile: log.name == null || log.name!.isEmpty ? 'unknown' :log.name!),
              const SizedBox(
                height: 15,
              ),
              Field(heading: 'Number:', tile: log.number!),
              const SizedBox(
                height: 15,
              ),
              Field(heading: 'Call type:', tile: log.callType.toString().substring(9)),
              const SizedBox(
                height: 15,
              ),
              Field(heading: 'Date:', tile: formatDate(DateTime.fromMillisecondsSinceEpoch(log.timestamp!))),
              const SizedBox(
                height: 15,
              ),
              Field(heading: 'Time:', tile: formatTime(DateTime.fromMillisecondsSinceEpoch(log.timestamp!))),
              const SizedBox(
                height: 15,
              ),

            ],
          ),
        ),
      ),
    );
  }
}
