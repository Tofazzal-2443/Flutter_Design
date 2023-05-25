import 'package:flutter/material.dart';

import '../custom_style.dart';

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/on_boarding_images/on2.png"),
            const SizedBox(
              height: 41,
            ),
            const Text(
              "Know where your money goes",
              style: title1,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 17,
            ),
            const Text(
              "Track your transaction easily, with categories and financial report",
              style: regular1,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
