import 'package:flutter/material.dart';
import 'package:montra_expense_tracker/widgets/custom_button.dart';

import '../custom_style.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundWClr,
      appBar: AppBar(
        title: const Text(
          "Forgot Password",
          style: style18,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "Don’t worry.\nEnter your email and we’ll send you a link to reset your password.",
              textAlign: TextAlign.left,
              style: myStyle(
                24,
                style36Clr,
                FontWeight.w600,
              ),
            ),
            const SizedBox(
              height: 46,
            ),
            TextField(
              controller: emailController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                labelText: 'Email',
                labelStyle: style16,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            CustomButton(
              buttonText: "Continue",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
