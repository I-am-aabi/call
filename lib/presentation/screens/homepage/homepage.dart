import 'package:call/presentation/core.dart';
import 'package:call/presentation/screens/homepage/functions/getcalllog.dart';
import 'package:call/presentation/screens/homepage/widgets/appbar.dart';
import 'package:call/presentation/screens/homepage/widgets/callinfo.dart';
import 'package:call_log/call_log.dart';
import 'package:flutter/material.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late Future<Iterable<CallLogEntry>> logs;
  @override
  void initState() {
    logs = getCalllogs();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const HomeappBar(),
            const SizedBox(
              height: 15,
            ),
            Expanded(
              child: FutureBuilder(
                future: logs,
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.done) {
                    Iterable<CallLogEntry>? entries = snapshot.data;
                    return ListView.separated(
                      itemBuilder: (context, index) {
                        return CallerInfo(
                          log: entries.elementAt(index),
                        );
                      },
                      itemCount: entries!.length,
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 15,
                      ),
                    );
                  } else {
                    return const CircularProgressIndicator();
                  }
                },
              ),
            )
            // CallerInfo()
          ],
        ),
      )),
    );
  }
}
