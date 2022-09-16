import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:test/myStats.dart';
import 'package:test/teamStats.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var isTeamstats = true;

  flipAction() {
    setState(() {
      isTeamstats = !isTeamstats;
    });
  }

  BorderRadiusGeometry radius = const BorderRadius.only(
    topLeft: Radius.circular(24.0),
    topRight: Radius.circular(24.0),
  );

  Widget dragButton = Container(
    height: 6,
    width: 82,
    decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(8),
        ),
        color: Colors.white),
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('DUMMY'),
        ),
        body: SlidingUpPanel(
          backdropEnabled: true,
          minHeight: 40,
          panel: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child:
                  isTeamstats ? TeamStats(flipAction) : MyStasts(flipAction)),
          collapsed: Container(
            decoration: BoxDecoration(
              borderRadius: radius,
              color: const Color.fromRGBO(245, 120, 146, 1),
            ),
            child: Stack(
              alignment: AlignmentDirectional.topCenter,
              children: [
                Container(
                  padding: const EdgeInsets.all(8.0),
                  child: dragButton,
                ),
              ],
            ),
          ),
          body: const Center(
            child: Text("DUMMY"),
          ),
          borderRadius: radius,
        ),
      ),
    );
  }
}
