import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/details/components/top_rounded_container.dart';
import 'package:shop_app/screens/home/labClass.dart';
import 'package:shop_app/screens/profile/patientImage.dart';
import 'package:shop_app/screens/profile/reportImageScreen.dart';

import '../../constants.dart';

class MyReports extends StatefulWidget {
  static String routeName = 'reportsss';
  @override
  _MyReportsState createState() => _MyReportsState();
}

class _MyReportsState extends State<MyReports> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[100],
        title: Text(' Your Reports'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TopRoundedContainer(
                color: kPrimaryColor[100],
                child: report(
                  context1: context,
                  lapName: 'Elhamy Laboratory',
                  reportKind: 'UD Gram Test',
                )),
            SizedBox(
              height: 30,
            ),
            TopRoundedContainer(
                color: kPrimaryColor[100],
                child: report(
                  context1: context,
                  lapName: 'Al-Safwa',
                  reportKind: 'breathe Test',
                )),
          ],
        ),
      ),
    ));
  }

  FittedBox report({
    BuildContext context,
    String lapName,
    String reportKind,
    Color colors,
    BuildContext context1,
  }) {
    return FittedBox(
      child: Container(
        // height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context1).size.width - 20,
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            border: Border.all(color: Colors.blue),
            borderRadius: BorderRadius.circular(16.0),
            boxShadow: [BoxShadow(color: kPrimaryLightColor, blurRadius: 2.0)]),
        child: Dismissible(
          key: Key('welcome'),
          child: Column(
            children: [
              Text(lapName, style: TextStyle(color: kTextColor, fontSize: 15)),
              SizedBox(height: 16.0),
              Text(reportKind, style: TextStyle(color: kPrimaryLightColor)),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerRight,
                child: FlatButton(
                  child: Text('Visit Now'),
                  onPressed: () {
                    return Navigator.pushNamed(
                        context1, ReportsImage.routeName);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
