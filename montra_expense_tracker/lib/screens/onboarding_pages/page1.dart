import 'package:flutter/material.dart';
import 'package:montra_expense_tracker/screens/custom_style.dart';

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/on_boarding_images/on1.png"),
            const SizedBox(
              height: 41,
            ),
            const Text(
              "Gain total control of your money",
              style: style32,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 17,
            ),
            const Text(
              "Become your own money manager and make every cent count",
              style: style16,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
