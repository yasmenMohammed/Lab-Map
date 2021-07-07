import 'package:flutter/material.dart';

class ReportsImage extends StatefulWidget {
  static String routeName = 'IMAGE';
  @override
  _ReportsImageState createState() => _ReportsImageState();
}

class _ReportsImageState extends State<ReportsImage> {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/images/dia.png'),
      fit: BoxFit.fill,
    );
  }
}
