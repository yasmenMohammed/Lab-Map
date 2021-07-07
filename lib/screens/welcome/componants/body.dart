import 'package:flutter/material.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/sign_up/sign_up_screen.dart';

import '../../../constants.dart';

class WelcomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: 200,
        ),
        Image(
          image: AssetImage("./assets/images/logo.jpg"),
        ),
        SizedBox(
          height: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90),
              color: Colors.blue,
            ),
            child: FlatButton(
              onPressed: () {
                return Navigator.pushReplacementNamed(
                    context, SignInScreen.routeName);
              },
              child: Text(
                "Login",
                style: TextStyle(color: Colors.black),
              ),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              color: kPrimaryColor,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(90),
              border: Border.all(color: Colors.black),
              color: Colors.white,
            ),
            child: FlatButton(
              onPressed: () {
                return Navigator.pushReplacementNamed(
                    context, SignUpScreen.routeName);
              },
              child: Text("SignUp", style: TextStyle(color: Colors.blue)),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
              color: kPrimaryLightColor,
            ),
          ),
        ),
      ],
    );
  }
}
