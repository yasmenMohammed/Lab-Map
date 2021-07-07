import 'package:flutter/widgets.dart';
import 'package:shop_app/location/location.dart';
import 'package:shop_app/notification/notificationPage.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/home/components/notification.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/home/labClass.dart';
import 'package:shop_app/screens/home/labSSbooking.dart';
import 'package:shop_app/screens/home/labSScreen.dart';
import 'package:shop_app/screens/home/nearBy.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';
import 'package:shop_app/screens/profile/edit.dart';
import 'package:shop_app/screens/profile/patientImage.dart';
import 'package:shop_app/screens/profile/patientReport.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';
import 'package:shop_app/screens/profile/reportImageScreen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/screens/welcome/welcome.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  EditScreen.routeName: (context) => EditScreen(),
  WelcomeScreen.routeName: (context) => WelcomeScreen(),
  MapSample.routeName: (context) => MapSample(),
  MyNearBy.routeName: (context) => MyNearBy(),
  LabScreen.routeName: (context) => LabScreen(),
  LabsScreen.routeName: (context) => LabsScreen(),
  BookingSS.routeName: (context) => BookingSS(),
  NotificationPage.routeName: (context) => NotificationPage(),
  ReportImage.routeName: (context) => ReportImage(),
  ReportsImage.routeName: (context) => ReportsImage(),
  MyReports.routeName: (context) => MyReports()
};
