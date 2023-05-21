import 'package:flutter/material.dart';
import 'package:montra_expense_tracker/widgets/custom_button.dart';

import 'custom_style.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundWClr,
      appBar: AppBar(
        title: const Text(
          "Sign Up",
          style: style18,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
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
              height: 24,
            ),
            TextField(
              controller: passwordController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                labelText: 'Password',
                labelStyle: style16,
                suffixIcon: const Icon(Icons.visibility),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            CustomButton(
              buttonText: "Login",
              onTap: () {},
            ),
            const Padding(
              padding: EdgeInsets.only(top: 33, bottom: 38),
              child: Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 18,
                  color: backgroundClr,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            RichText(
              text: const TextSpan(
                children: [
                  TextSpan(
                    text: "Don’t have an account yet?",
                    style: style16,
                  ),
                  TextSpan(
                    text: "Sign Up",
                    style: TextStyle(
                      fontSize: 16,
                      color: backgroundClr,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
