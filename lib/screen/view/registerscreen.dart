import 'package:fairebaseinteraction/screen/controller/homecontroller.dart';
import 'package:fairebaseinteraction/screen/view/homescreen.dart';
import 'package:fairebaseinteraction/screen/view/loginscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Register_Page extends StatefulWidget {
  const Register_Page({Key? key}) : super(key: key);

  @override
  State<Register_Page> createState() => _Register_PageState();
}

class _Register_PageState extends State<Register_Page> {
  TextEditingController e1 = TextEditingController();
  TextEditingController p1 = TextEditingController();
  HomeController homeController = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 300,
                  width: double.infinity,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(60),
                      bottomLeft: Radius.circular(60),
                    ),
                    color: Colors.pink,
                  ),
                  child: Text(
                    "Taste Me",
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                TextField(
                  controller: e1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    prefixIcon: Icon(
                      Icons.mail,
                      color: Colors.pink,
                    ),
                    hintText: "E-mail",
                  ),
                  cursorColor: Colors.pink,
                ),
                SizedBox(
                  height: 20,
                ),
                TextField(
                  controller: p1,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    prefixIcon: Icon(
                      Icons.lock,
                      color: Colors.pink,
                    ),
                    hintText: "Password",
                  ),
                  cursorColor: Colors.pink,
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: ()async {
                    var res =await homeController.findUser(e1.text, p1.text);
                    Get.snackbar("Login", "$res");
                    if(res == "Success"){
                      Get.to(Login_Page(),);
                    }
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.pink),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
