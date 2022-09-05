import 'package:flutter/material.dart';

class Resgister_Page extends StatefulWidget {
  const Resgister_Page({Key? key}) : super(key: key);

  @override
  State<Resgister_Page> createState() => _Resgister_PageState();
}

class _Resgister_PageState extends State<Resgister_Page> {
  TextEditingController e1 = TextEditingController();
  TextEditingController p1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.green,
            ),
          ],
        ),
      ),
    );
  }
}
