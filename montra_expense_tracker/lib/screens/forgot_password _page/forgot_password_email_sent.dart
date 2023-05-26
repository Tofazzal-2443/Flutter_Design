import 'package:flutter/material.dart';
import 'package:montra_expense_tracker/widgets/custom_button.dart';

import '../custom_style.dart';

class ForgotPasswordEmailSent extends StatelessWidget {
  const ForgotPasswordEmailSent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundWClr,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              child: Column(
                children: [
                  SizedBox(
                    height: 312,
                    width: double.infinity,
                    child: Image.asset(
                      "assets/images/on_boarding_images/email_ms.png",
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                  ),
                  const SizedBox(
                    height: 18,
                  ),
                  Text(
                    "Your email is on the way",
                    style: myStyle(
                      24,
                      dark100,
                      FontWeight.w700,
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    "Check your email test@test.com and follow the instructions to reset your password",
                    style: myStyle(
                      16,
                      dark25,
                      FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            CustomButton(
              buttonText: "Back to Login",
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
