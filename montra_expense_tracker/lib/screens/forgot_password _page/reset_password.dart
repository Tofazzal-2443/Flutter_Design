import 'package:flutter/material.dart';
import 'package:montra_expense_tracker/widgets/custom_button.dart';

import '../custom_style.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({Key? key}) : super(key: key);
  TextEditingController newPasswordController = TextEditingController();
  TextEditingController retypeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundWClr,
      appBar: AppBar(
        title: const Text(
          "Reset Password",
          style: title3,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: newPasswordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                labelText: "New Password",
                labelStyle: myStyle(
                  16,
                  dark25,
                  FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            TextField(
              controller: retypeController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                labelText: "New Password",
                labelStyle: myStyle(
                  16,
                  dark25,
                  FontWeight.w400,
                ),
              ),
            ),
            const SizedBox(
              height: 34,
            ),
            CustomButton(
              buttonText: "Continue",
              onTap: () {},
            )
          ],
        ),
      ),
    );
  }
}
