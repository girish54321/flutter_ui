import 'package:ecommerce/src/pages/login_signup/login_page.dart';
import 'package:ecommerce/src/pages/login_signup/signup_page.dart';
import 'package:flutter/cupertino.dart';

var routes = <String, WidgetBuilder>{
  "/SignupPage" : (BuildContext context) => SignupPage(),
  '/LoginPage' : (BuildContext context) => LoginPage(),
};