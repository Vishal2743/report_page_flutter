import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TeamStats extends StatefulWidget {
  VoidCallback flipAction;
  TeamStats(this.flipAction);
  @override
  State<TeamStats> createState() => _TeamStatsState();
}

class _TeamStatsState extends State<TeamStats> {
  var dayCompleted = 12;
  var dayTotal = 19;
  var weekCompleted = 38;
  var weekTotal = 57;
  var monthCompleted = 369;
  var monthTotal = 392;
  var isDay = true;
  var isWeek = false;
  var isMonth = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                Color.fromRGBO(252, 140, 123, 1),
                Color.fromRGBO(245, 120, 146, 1),
              ],
            ),
          ),
          child: Column(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    'Team stats',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isDay = true;
                        isWeek = false;
                        isMonth = false;
                      });
                    },
                    child: isDay == true
                        ? Container(
                            height: 32,
                            width: 62,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                bottomLeft: Radius.circular(6),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Day',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        : Container(
                            height: 32,
                            width: 62,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(253, 211, 211, 1),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(6),
                                bottomLeft: Radius.circular(6),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Day',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isDay = false;
                        isWeek = true;
                        isMonth = false;
                      });
                    },
                    child: isWeek == true
                        ? Container(
                            height: 32,
                            width: 62,
                            color: Colors.white,
                            child: const Center(
                              child: Text(
                                'Week',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        : Container(
                            height: 32,
                            width: 62,
                            color: const Color.fromRGBO(253, 211, 211, 1),
                            child: const Center(
                              child: Text(
                                'Week',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        isDay = false;
                        isWeek = false;
                        isMonth = true;
                      });
                    },
                    child: isMonth == true
                        ? Container(
                            height: 32,
                            width: 62,
                            decoration: const BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Month',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        : Container(
                            height: 32,
                            width: 62,
                            decoration: const BoxDecoration(
                              color: Color.fromRGBO(253, 211, 211, 1),
                              borderRadius: BorderRadius.only(
                                topRight: Radius.circular(6),
                                bottomRight: Radius.circular(6),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Month',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.115,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(254, 239, 239, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Row(
                  children: [
                    (isDay)
                        ? Padding(
                            padding: const EdgeInsets.only(left: 52),
                            child: CircularPercentIndicator(
                              radius: 26,
                              lineWidth: 6,
                              percent: (dayCompleted / dayTotal),
                              animateFromLastPercent: true,
                              progressColor:
                                  const Color.fromRGBO(51, 97, 255, 1),
                              circularStrokeCap: CircularStrokeCap.round,
                              center: Text(
                                '${((dayCompleted / dayTotal) * 100).toStringAsFixed(0)}%',
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        : const SizedBox(),
                    isWeek
                        ? Padding(
                            padding: const EdgeInsets.only(left: 52),
                            child: CircularPercentIndicator(
                              radius: 26,
                              lineWidth: 6,
                              percent: (weekCompleted / weekTotal),
                              animateFromLastPercent: true,
                              progressColor:
                                  const Color.fromRGBO(51, 97, 255, 1),
                              circularStrokeCap: CircularStrokeCap.round,
                              center: Text(
                                '${((weekCompleted / weekTotal) * 100).toStringAsFixed(0)}%',
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        : SizedBox(),
                    isMonth
                        ? Padding(
                            padding: const EdgeInsets.only(left: 52),
                            child: CircularPercentIndicator(
                              radius: 26,
                              lineWidth: 6,
                              percent: (monthCompleted / monthTotal),
                              animateFromLastPercent: true,
                              progressColor:
                                  const Color.fromRGBO(51, 97, 255, 1),
                              circularStrokeCap: CircularStrokeCap.round,
                              center: Text(
                                '${((monthCompleted / monthTotal) * 100).toStringAsFixed(0)}%',
                                style: const TextStyle(
                                    fontSize: 14, fontWeight: FontWeight.bold),
                              ),
                            ),
                          )
                        : SizedBox(),
                    Padding(
                      padding: const EdgeInsets.only(top: 16, left: 52),
                      child: Column(
                        children: [
                          const Text(
                            'Completed Task',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          isDay
                              ? Text(
                                  dayCompleted.toString(),
                                  style: const TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(255, 117, 98, 1),
                                  ),
                                )
                              : const SizedBox(),
                          isWeek
                              ? Text(
                                  weekCompleted.toString(),
                                  style: const TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(255, 117, 98, 1),
                                  ),
                                )
                              : const SizedBox(),
                          isMonth
                              ? Text(
                                  monthCompleted.toString(),
                                  style: const TextStyle(
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromRGBO(255, 117, 98, 1),
                                  ),
                                )
                              : const SizedBox(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Center(
                child: ClipPath(
                  clipper: OvalBottomBorderClipper(),
                  child: Container(
                    color: const Color.fromRGBO(253, 211, 211, 1),
                    height: MediaQuery.of(context).size.height * 0.115,
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Column(
                                children: [
                                  const Text(
                                    'Total Tasks',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  isDay
                                      ? Text(
                                          dayTotal.toString(),
                                          style: const TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(255, 117, 98, 1),
                                          ),
                                        )
                                      : const SizedBox(),
                                  isWeek
                                      ? Text(
                                          weekTotal.toString(),
                                          style: const TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(255, 117, 98, 1),
                                          ),
                                        )
                                      : const SizedBox(),
                                  isMonth
                                      ? Text(
                                          monthTotal.toString(),
                                          style: const TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(255, 117, 98, 1),
                                          ),
                                        )
                                      : const SizedBox(),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 12),
                              child: Column(
                                children: [
                                  const Text(
                                    'Incomplete Tasks',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  isDay
                                      ? Text(
                                          (dayTotal - dayCompleted).toString(),
                                          style: const TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(255, 117, 98, 1),
                                          ),
                                        )
                                      : const SizedBox(),
                                  isWeek
                                      ? Text(
                                          (weekTotal - weekCompleted)
                                              .toString(),
                                          style: const TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(255, 117, 98, 1),
                                          ),
                                        )
                                      : const SizedBox(),
                                  isMonth
                                      ? Text(
                                          (monthTotal - monthCompleted)
                                              .toString(),
                                          style: const TextStyle(
                                            fontSize: 32,
                                            fontWeight: FontWeight.bold,
                                            color:
                                                Color.fromRGBO(255, 117, 98, 1),
                                          ),
                                        )
                                      : const SizedBox(),
                                ],
                              ),
                            ),
                          ],
                        ),
                        GestureDetector(
                          onTap: () => widget.flipAction(),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                height: 13.33,
                                child: SvgPicture.asset(
                                    'assets/images/Vector.svg'),
                              ),
                              const SizedBox(
                                width: 2,
                              ),
                              const Text(
                                'Tap to flip',
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 117, 98, 1),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        ClipPath(
          clipper: OvalBottomBorderClipper(),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.topRight,
                colors: [
                  Color.fromRGBO(252, 140, 123, 1),
                  Color.fromRGBO(245, 120, 146, 1),
                ],
              ),
            ),
            height: MediaQuery.of(context).size.height * 0.12,
          ),
        )
      ],
    );
  }
}
