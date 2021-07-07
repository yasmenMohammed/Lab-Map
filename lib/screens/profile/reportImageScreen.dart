import 'package:flutter/material.dart';

class ReportImage extends StatefulWidget {
  static String routeName = 'IMAGE';
  @override
  _ReportImageState createState() => _ReportImageState();
}

class _ReportImageState extends State<ReportImage> {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/images/dia.png'),
      fit: BoxFit.fill,
    );
  }
}
