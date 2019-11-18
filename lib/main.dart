import 'package:ecommerce/src/foodappui/foodappui/food_app_homepage.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ecommerce Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      // home: LoginPage(title: 'Login Page'),
      // home: HomePage(),
      // home: FLutterCarousel(),
      // home: InstagramHomePage(),
      // home: LoginPage2(),
      // home: CarHomePage(),
      // home: InstagramProfilePage(),
      // home: TabBarDemo(),
      // home: UserProfilePage(),
      // home: LoginPage3(),
      // home: WhatsAppUi2(),
      // home: AppBarHome(),
      // home: FancyBottonNavigationBar(),
      // home: SlidingLogin(),
      // home: CurvedBottonNavigationBar(),
      // home: FlutterSnakeBottomBar(),
      // home: AnimatedAppBar(),
      home: FoodAppHomePage(),
    );
  }
}
