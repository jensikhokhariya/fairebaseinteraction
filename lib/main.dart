import 'package:fairebaseinteraction/screen/view/homescreen.dart';
import 'package:fairebaseinteraction/screen/view/loginscreen.dart';
import 'package:fairebaseinteraction/screen/view/registerscreen.dart';
import 'package:fairebaseinteraction/screen/view/splashscreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/':(context)=>Spalsh_Screen(),
        '/login':(context)=>Login_Page(),
        '/sign':(context)=>Register_Page(),
        '/home':(context)=>Home_Page(),
      },
    ),
  );
}