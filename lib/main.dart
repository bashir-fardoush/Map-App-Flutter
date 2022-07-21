import 'package:camp_map/home_page.dart';
import 'package:camp_map/login_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => const LoginPage(),
      'home':(context) => const HomePage(),
    },
  ));
}





