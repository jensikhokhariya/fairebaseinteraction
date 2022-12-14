import 'package:fairebaseinteraction/screen/controller/homecontroller.dart';
import 'package:fairebaseinteraction/screen/view/loginscreen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home_Page extends StatefulWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  State<Home_Page> createState() => _Home_PageState();
}

class _Home_PageState extends State<Home_Page> {
  HomeController homeController = Get.put(HomeController());
   User? user;
  @override
  void initState(){
    super.initState();
     user1();
  }
  dynamic user1(){
    var firebaseAuth = FirebaseAuth.instance;
     user = firebaseAuth.currentUser;
   }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.pink,
          title: Text(
            "Taste Me",
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("E-mail: ${user!.email}",style: TextStyle(fontSize: 25),),
              SizedBox(height: 15,),
              Text("Uid: ${user!.uid}",style: TextStyle(fontSize: 25),),
              SizedBox(height: 15,),
              Text("Provider: ${user!.providerData}",style: TextStyle(fontSize: 25),),
              SizedBox(height: 15,),
              GestureDetector(
                onTap: () {
                  homeController.signout();
                  Get.to(
                    Login_Page(),
                  );
                },
                child: Container(
                  height: 60,
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: Text(
                    "Sign Out",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.pink,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
