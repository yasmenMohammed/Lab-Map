import 'package:flutter/material.dart';

import 'componants/body.dart';

class WelcomeScreen extends StatelessWidget {
  static String routeName = "welcomeScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WelcomeBody(),
    );
  }
}
