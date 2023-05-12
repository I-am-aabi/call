import 'package:call/presentation/core.dart';
import 'package:call/presentation/screens/deatailspage/callinfo.dart';
import 'package:call/presentation/screens/homepage/functions/geticon.dart';
import 'package:call_log/call_log.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CallerInfo extends StatelessWidget {
  const CallerInfo({super.key, required this.log});

  final CallLogEntry log;
  @override
  Widget build(BuildContext context) {
    String letter =
        log.name == null || log.name!.isEmpty ? '!' : log.name!.substring(0, 1);
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>  Callinfo(log: log),
            ));
      },
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(boxShadow: const [
          BoxShadow(
            color: Color.fromARGB(255, 17, 16, 16),
            blurRadius: 1.0,
            spreadRadius: 1.0,
            offset: Offset(0.0, 0.0),
          ),
        ], borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.black,
                    radius: 25,
                    child: Text(
                      letter,
                      style: const TextStyle(fontSize: 25),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 5.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        gettitle(log.name!, log.number!),
                        style:
                            GoogleFonts.poppins(fontSize: 18, color: txtcolor),
                      ),
                      Text(
                        formatDateTime(DateTime.fromMillisecondsSinceEpoch(
                            log.timestamp!)),
                        style:
                            GoogleFonts.poppins(fontSize: 12, color: txtcolor),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.info_outline_rounded,
                    color: Colors.white,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(
                    geticon(log.callType!),
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
