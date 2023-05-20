import 'package:flutter/material.dart';

import '../custom_style.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/on_boarding_images/on2.png"),
            SizedBox(
              height: 41,
            ),
            Text(
              "Know where your money goes",
              style: h1Style,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              "Track your transaction easily, with categories and financial report",
              style: h3Style,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
