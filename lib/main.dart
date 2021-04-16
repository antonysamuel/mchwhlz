import 'package:flutter/material.dart';
import 'package:mech_onwheels/UI/home/homePage.dart';
import 'package:mech_onwheels/UI/login/loginPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // theme: ThemeData.dark(),
      home: HomePage(),
      initialRoute: '/login',
      routes: {
        '/' : (context)=>HomePage(),
        '/login' : (context)=>LoginPage(),
      },
    );
  }
}
