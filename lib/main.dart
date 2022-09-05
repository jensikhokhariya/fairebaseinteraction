import 'package:fairebaseinteraction/screen/view/splashscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=>Spalsh_Screen(),
      },
    ),
  );
}