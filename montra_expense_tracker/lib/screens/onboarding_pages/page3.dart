import 'package:flutter/material.dart';

import '../custom_style.dart';

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/on_boarding_images/on3.png"),
            const SizedBox(
              height: 41,
            ),
            const Text(
              "Planning ahead",
              style: style32,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 17,

            ),
            const Text(
              "Setup your budget for each category so you in control",
              style: style16,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
