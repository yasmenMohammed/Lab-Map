import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/location/location.dart';

import 'labSSbooking.dart';

class LabScreen extends StatefulWidget {
  static String routeName = 'labScreen';
  @override
  _LabScreenState createState() => _LabScreenState();
}

class _LabScreenState extends State<LabScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Lab Map'),
          backgroundColor: kPrimaryColor,
        ),
        body: Column(
          children: [
            Text('Dr. Elhamy Medical Analysis Laboratory'),
            SizedBox(
              height: 10,
            ),
            Text('Address: Dr. Elhamy Medical Analysis Laboratory'),
            SizedBox(
              height: 20,
            ),
            Container(
              color: Colors.lightBlueAccent[50],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('opening hours'),
                  Row(
                    children: [Text('Saturday'), Text('8AM–12AM')],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [Text('Sunday'), Text('	10AM–11:30PM')],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [Text('Monday'), Text('10AM–11:30PM')],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [Text('Tuesday'), Text('10AM–11:30PM')],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [Text('Wednesday'), Text('10AM–11:30PM')],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [Text('Thursday'), Text('	10AM–11:30PM')],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [Text('friday'), Text('10AM–11:30PM')],
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Text('phone number:0120 131 7913'),
            FlatButton(
              onPressed: () {
                Navigator.pushReplacementNamed(context, MapSample.routeName);
              },
              child: Container(
                child: Text('see Directions'),
                color: Colors.lightBlueAccent,
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: FlatButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, BookingSS.routeName);
                },
                child: Container(
                  child: Text('BOOK NOW'),
                  color: Colors.lightBlueAccent,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
