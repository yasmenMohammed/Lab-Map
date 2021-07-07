import 'dart:math';

import 'package:flutter/material.dart';
import 'package:shop_app/location/location.dart';
import 'package:shop_app/screens/home/labSSbooking.dart';

class LabsScreen extends StatefulWidget {
  static String routeName = 'lab profile';

  @override
  _LabsScreenState createState() => _LabsScreenState();
}

class _LabsScreenState extends State<LabsScreen> {
  TextStyle _style1 =
      TextStyle(color: Color(0xff3276CB), fontWeight: FontWeight.bold);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 10.0),
              child: Row(
                children: [
                  Icon(
                    Icons.arrow_back_ios,
                    color: Colors.grey.shade500,
                  ),
                  Text(
                    'My Room',
                    style: TextStyle(
                        color: Colors.grey.shade500,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 150,
              width: double.infinity,
              child: CustomPaint(
                  foregroundPainter: CustomCircle(
                      lineColor: Colors.blue, width: 4, percent: 0.8),
                  child: Stack(
                    children: [
                      Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 6.0,
                                  color: Colors.black,
                                  offset: Offset(1, 3),
                                  spreadRadius: 0.0)
                            ],
                          ),
                          margin: EdgeInsets.all(25),
                          child: SizedBox(
                              height: 110,
                              width: 110,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(500),
                                  child: Image.asset(
                                    'assets/images/lab.png',
                                    fit: BoxFit.cover,
                                  )))),
                      Container(
                        margin: EdgeInsets.only(top: 40.0, left: 270.0),
                        child: Text('4.2 Rate', style: _style1),
                      ),
                    ],
                  )),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Text(
              'معمل سكاي لاب',
              style: _style1,
            ),
            const SizedBox(
              height: 30.0,
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                    height: 150,
                    padding: const EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 10.0),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.blue[900],
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          child: Text(
                            'Address: شارع شعبان،، Al Mahalah Al Kubra (Part 2), ، المحلة الكبرى،، Gharbia Governorate',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    margin: EdgeInsets.only(top: 120),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      ),
                    ),
                    child: Stack(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 30.0,
                            ),
                            Flex(
                              direction: Axis.vertical,
                              children: [
                                Text(
                                  'OPENING HOURS',
                                  style: _style1,
                                ),
                                const SizedBox(
                                  height: 25.0,
                                ),
                                const MySeparator(color: Colors.grey),
                                Container(height: 10),
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ListView(
                                  children: [
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Saturday'),
                                          Icon(
                                            Icons.check_box_outlined,
                                            color: Color(0xff3276CB),
                                          ),
                                        ]),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Sunday'),
                                          Icon(
                                            Icons.check_box_outlined,
                                            color: Color(0xff3276CB),
                                          ),
                                        ]),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Monday'),
                                          Icon(
                                            Icons.check_box_outlined,
                                            color: Color(0xff3276CB),
                                          ),
                                        ]),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Tuesday'),
                                          Icon(
                                            Icons.check_box_outlined,
                                            color: Color(0xff3276CB),
                                          ),
                                        ]),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Wednesday'),
                                          Icon(
                                            Icons.check_box_outlined,
                                            color: Color(0xff3276CB),
                                          ),
                                        ]),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Thursday'),
                                          Icon(
                                            Icons.check_box_outlined,
                                            color: Color(0xff3276CB),
                                          ),
                                        ]),
                                    const SizedBox(
                                      height: 5.0,
                                    ),
                                    Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('Friday Closed'),
                                          Icon(
                                            Icons.check_box_outlined,
                                            color: Color(0xff3276CB),
                                          ),
                                        ]),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: TextButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.resolveWith(
                                            (states) => Color(0xff3276CB),
                                          ),
                                          shape:
                                              MaterialStateProperty.resolveWith(
                                                  (states) =>
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      13.0)))),
                                      onPressed: () {
                                        setState(() {
                                          Navigator.pushReplacementNamed(
                                              context, MapSample.routeName);
                                        });
                                      },
                                      child: Text(
                                        'See Directions',
                                        style: _style1.copyWith(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  Expanded(
                                    child: TextButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStateProperty.resolveWith(
                                            (states) => Color(0xff3276CB),
                                          ),
                                          shape:
                                              MaterialStateProperty.resolveWith(
                                                  (states) =>
                                                      RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      13.0)))),
                                      onPressed: () {
                                        setState(() {
                                          Navigator.pushReplacementNamed(
                                              context, BookingSS.routeName);
                                        });
                                      },
                                      child: Text(
                                        'Book Now',
                                        style: _style1.copyWith(
                                          color: Colors.white,
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          left: -25,
                          top: 50,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue[900],
                          ),
                        ),
                        Positioned(
                          right: -25,
                          top: 50,
                          child: CircleAvatar(
                            backgroundColor: Colors.blue[900],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomCircle extends CustomPainter {
  final Color lineColor;
  final double width;
  final double percent;

  CustomCircle({
    this.lineColor,
    this.width,
    this.percent,
  });

  @override
  void paint(Canvas canvas, Size size) {
    Paint line = Paint()
      ..color = lineColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = width;
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = min(size.width / 2, size.height / 2);
    double sweepAngle = 2 * pi * percent;
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), 0,
        sweepAngle, false, line);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}

class MySeparator extends StatelessWidget {
  final double height;
  final Color color;

  const MySeparator({this.height = 1, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = 10.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (1.5 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}
