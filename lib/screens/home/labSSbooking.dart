import 'package:flutter/material.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/details/components/top_rounded_container.dart';

import '../../constants.dart';

class BookingSS extends StatefulWidget {
  static String routeName = 'bookingSS';

  @override
  _BookingSSState createState() => _BookingSSState();
}

class _BookingSSState extends State<BookingSS>
    with SingleTickerProviderStateMixin {
  Color kcolor = Colors.white;

  AnimationController _controler;
  Tween<double> _scaleTween = Tween<double>(begin: 1, end: 2);
  DateTime date = DateTime.now();
  Future<Null> selectedTimePicker(BuildContext context) async {
    final DateTime picked = await showDatePicker(
        context: context,
        initialDate: date,
        firstDate: DateTime(1930),
        lastDate: DateTime(2040));
    if (picked != null && picked != date) {
      setState(() {
        date = picked;
      });
    }
  }

  @override
  void initState() {
    _controler = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3),
    );
    _controler.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _controler.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text('Pick a date'),
            FlatButton(
                color: kPrimaryColor[100],
                onPressed: () {
                  setState(() {
                    selectedTimePicker(context);
                  });
                },
                child: Text('select')),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(color: Colors.blueAccent[50]),
                  child: Text(
                    date.day.toString(),
                    style: TextStyle(color: kTextColor),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.blueAccent[50]),
                  child: Text(
                    date.month.toString(),
                    style: TextStyle(color: kTextColor),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  decoration: BoxDecoration(color: Colors.blueAccent[50]),
                  child: Text(
                    date.year.toString(),
                    style: TextStyle(color: kTextColor),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 100,
            ),
            Divider(
              color: Colors.black,
            ),
            Text('Method of Consulting'),
            SizedBox(
              height: 40,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Clickable(
                    text1: 'messaging',
                    text2: "1000 EL",
                    icon: Icons.message,
                    function: () {
                      setState(() {
                        kcolor = Colors.green;
                      });
                    }),
                Clickable(
                    text1: 'phone Call',
                    text2: '15000 EL',
                    icon: Icons.phone,
                    function: () {
                      setState(() {
                        this.kcolor = Colors.blue;
                      });
                    }),
                Clickable(
                    text1: 'video call',
                    text2: '2000 EL',
                    icon: Icons.video_call,
                    function: () {
                      setState(() {
                        kcolor = Colors.yellow;
                      });
                    }),
              ],
            )
          ],
        ),
      ),
    );
  }

  ClipRRect Clickable(
      {String text1, String text2, IconData icon, Function function}) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: TopRoundedContainer(
        color: kcolor,
        child: RaisedButton(
          onPressed: function,
          child: Column(
            children: [
              Row(
                children: [
                  Icon(icon),
                  Text(
                    text1,
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
              Text(text2)
            ],
          ),
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        ),
      ),
    );
  }
}
