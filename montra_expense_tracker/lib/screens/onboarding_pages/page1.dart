import 'package:flutter/material.dart';
import 'package:montra_expense_tracker/screens/custom_style.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/on_boarding_images/on1.png"),
            SizedBox(
              height: 41,
            ),
            Text(
              "Gain total control of your money",
              style: h1Style,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 17,
            ),
            Text(
              "Become your own money manager and make every cent count",
              style: h3Style,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
