import '../constants.dart';
import '../notification/components/defaultAppBar.dart';
import '../notification/components/defaultBackButton.dart';
import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  static String routeName = 'not';
  @override
  _NotificationPageState createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: DefaultAppBar(
        title: 'Notification',
        child: DefaultBackButton(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            not(
                context: context,
                text1: 'We Wish You Getting Better Soon',
                text2: "From:Lab Map Team.",
                textDate: '11/Feb/2021 04:42 PM', colors:Colors.blue[50]),
                               

            SizedBox(
              height: 30,
            ),
            not(
                context: context,
                text1: 'You recieved a new report',
                text2: "From:Lab Dr ElHamy",
                textDate: '11/Feb/2021 02:42 PM', colors:Colors.blue[50]),
               
            SizedBox(
              height: 30,
            ),
            not(
                context: context,
                text1: 'You have a new accepted consultenation',
                text2: "From:Lab Al Safwa",
                textDate: '11/Jen/2021 04:42 PM',   colors:Colors.blue[50]),
                             

            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }

  FittedBox not(
      {BuildContext context, String text1, String text2, String textDate, Color colors}) {
    return FittedBox(
      child: Container(
        // height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width - 20,
        margin: EdgeInsets.all(5),
        padding: EdgeInsets.all(5),
        decoration: BoxDecoration(
            color: colors,
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [BoxShadow(color: kPrimaryLightColor, blurRadius: 2.0)]),
        child: Dismissible(
          key: Key('welcome'),
          child: Column(
            children: [
              Text(text1, style: TextStyle(color: kTextColor, fontSize: 15)),
              SizedBox(height: 16.0),
              Text(text2, style: TextStyle(color: kPrimaryLightColor)),
              SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerRight,
                child:
                    Text(textDate, style: TextStyle(color: kPrimaryLightColor)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
