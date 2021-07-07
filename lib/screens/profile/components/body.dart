import 'package:flutter/material.dart';
import 'package:shop_app/screens/profile/patientReport.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenu(
            text: "Visit Home Page",
            icon: "assets/icons/User Icon.svg",
            // press: () {
            //   Navigator.pushReplacementNamed(context, MyReports.routeName);
            // },
          ),
          ProfileMenu(
            text: "Reminder",
            icon: "assets/icons/Bell.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "language",
            icon: "assets/icons/language.svg",
            press: () {},
          ),
          Divider(
            color: Colors.black,
          ),
          ProfileMenu(
            text: "Contact Us",
            icon: "assets/icons/contact.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Privacy&Policy",
            icon: "assets/icons/padlock.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Terms&Condition",
            icon: "assets/icons/terms.svg",
            press: () {},
          ),
          ProfileMenu(
            text: "Sign Out",
            icon: "assets/icons/Log out.svg",
            press: () {},
          ),
        ],
      ),
    );
  }
}
