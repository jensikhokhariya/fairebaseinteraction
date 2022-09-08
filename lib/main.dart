import 'package:fairebaseinteraction/screen/view/homescreen.dart';
import 'package:fairebaseinteraction/screen/view/registerscreen.dart';
import 'package:fairebaseinteraction/screen/view/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/':(context)=>Spalsh_Screen(),
        '/login':(context)=>Login_Page(),
        '/sign':(context)=>Register_Page(),
      },
    ),
  );
}