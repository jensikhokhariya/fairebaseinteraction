import 'package:fairebaseinteraction/screen/controller/homecontroller.dart';
import 'package:fairebaseinteraction/screen/view/homescreen.dart';
import 'package:fairebaseinteraction/screen/view/registerscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';

class Login_Page extends StatefulWidget {
  const Login_Page({Key? key}) : super(key: key);

  @override
  State<Login_Page> createState() => _Login_PageState();
}

class _Login_PageState extends State<Login_Page> {
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
                  onTap: () async {
                    var res = await homeController.loginUser(e1.text, p1.text);
                    Get.snackbar("Login", "$res");
                    if (res == "Success") {
                      Get.to(
                        Home_Page(),
                      );
                    }
                  },
                  child: Container(
                    height: 60,
                    width: double.infinity,
                    alignment: Alignment.center,
                    child: Text(
                      "Login",
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
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Dont have an Account ?"),
                    SizedBox(
                      width: 5,
                    ),
                    TextButton(
                        onPressed: () {
                          Get.to(
                            Register_Page(),
                          );
                        },
                        child: Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.pink),
                        ))
                  ],
                ),
                TextButton(
                  onPressed: () {
                    homeController.googleSignIn();
                     Get.off(Home_Page(),);
                  },
                  child: Text(
                    "Login with Gogle",
                    style: TextStyle(color: Colors.pink),
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
