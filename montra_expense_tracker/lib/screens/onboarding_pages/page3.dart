import 'package:flutter/material.dart';

import '../custom_style.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/on_boarding_images/on3.png"),
            SizedBox(
              height: 41,
            ),
            Text(
              "Planning ahead",
              style: h1Style,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              "Setup your budget for each category so you in control",
              style: h3Style,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
