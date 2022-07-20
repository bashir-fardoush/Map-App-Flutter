import 'package:camp_map/add_complaint_page.dart';
import 'package:camp_map/add_desludge_page.dart';
import 'package:camp_map/home_page.dart';
import 'package:camp_map/login_page.dart';
import 'package:camp_map/map_page.dart';
import 'package:flutter/material.dart';


void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'login',
    routes: {
      'login': (context) => const LoginPage(),
      'home':(context) => const HomePage(),
      'toilets-map': (context) => const MapPage(),
      'add-complaint': (context)=> const AddComplaintPage(),
      'add-desludge': (context) => const AddDesludgePage(),

    },
  ));
}





