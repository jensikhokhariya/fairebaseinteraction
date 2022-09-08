import 'dart:async';

import 'package:fairebaseinteraction/screen/controller/homecontroller.dart';
import 'package:fairebaseinteraction/screen/view/homescreen.dart';
import 'package:fairebaseinteraction/screen/view/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Spalsh_Screen extends StatefulWidget {
  const Spalsh_Screen({Key? key}) : super(key: key);

  @override
  State<Spalsh_Screen> createState() => _Spalsh_ScreenState();
}

class _Spalsh_ScreenState extends State<Spalsh_Screen> {
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    get();
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            height: double.infinity,
            width: double.infinity,
            alignment: Alignment.center,
            color: Colors.pink,
            child: Text(
              "Taste Me",
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }

  void get() {
    bool check = homeController.cheakUser();
    if (check) {
      Timer(Duration(seconds: 3), () {
        Get.to(Home_Page());
      });
    }else{
      Timer(Duration(seconds: 3),(){
        Get.to(Login_Page(),);
      });
    }
  }
}
