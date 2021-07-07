import 'package:flutter/material.dart';
import 'package:shop_app/location/location.dart';
import 'package:shop_app/screens/home/labClass.dart';
import 'package:shop_app/screens/home/labSScreen.dart';

class MyNearBy extends StatelessWidget {
  const MyNearBy();
  static String routeName = 'nearBy';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(
          'Labs nearBy You',
          style: TextStyle(fontSize: 10, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 60,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, LabsScreen.routeName);
              },
              child: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  border: Border.all(width: 3, color: Colors.blue),
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Column(
                  children: [
                    Text(
                      'Hassab Labs',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'شارع شعبان،، Al Mahalah Al Kubra (Part 2), ، المحلة الكبرى،، Gharbia Governorate',
                      style: TextStyle(fontWeight: FontWeight.normal),
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Text(
                      'Phone:  0120 131 7913',
                      style: TextStyle(fontWeight: FontWeight.w200),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            lapbramater(
              context: context,
              text3: 'Phone: 040 2212255',
              text1: 'Dr. Elhamy Medical Analysis Laboratory',
              text2:
                  'Address: شارع طلعت حرب، Al Mahalah Al Kubra (Part 2), El Mahalla El Kubra, Gharbia Governorate',
            ),
            SizedBox(
              height: 30,
            ),
            lapbramater(
              context: context,
              text1: 'معمل الدرة للتحاليل الطبية',
              text2:
                  'Address: سكة طنطا، المحلة الكبرى (قسم 2)، المحلة الكبرى، الغربية،',
              text3: 'phone:0110 111 8415',
            ),
            SizedBox(
              height: 30,
            ),
            lapbramater(
              context: context,
              text3: 'phone:0110 111 8415',
              text2:
                  'Address: شارع سعيد محجوب، المحلة الكبرى (قسم 2)، المحلة الكبرى، الغربية،',
              text1: 'معامل ماستر لاب للتحاليل الطبية',
            )
          ],
        ),
      ),
    );
  }

  GestureDetector lapbramater(
      {BuildContext context,
      String text1,
      String text2,
      String text3,
      dynamic screen}) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, LabScreen.routeName);
      },
      child: Container(
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
          border: Border.all(width: 3, color: Colors.blue),
          borderRadius: BorderRadius.circular(50),
        ),
        child: Column(
          children: [
            Text(
              text1,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              text2,
              style: TextStyle(fontWeight: FontWeight.normal),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              'Phone: $text3',
              style: TextStyle(fontWeight: FontWeight.w200),
            )
          ],
        ),
      ),
    );
  }
}
