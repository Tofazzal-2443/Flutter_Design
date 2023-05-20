import 'package:flutter/material.dart';
import 'package:montra_expense_tracker/screens/custom_style.dart';
import 'package:montra_expense_tracker/widgets/custom_button.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool subValue = false;

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
              controller: nameController,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
                labelText: 'Name',
                labelStyle: style16,
              ),
            ),
            const SizedBox(
              height: 24,
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
              height: 17,
            ),
            Row(
              children: [
                Checkbox(
                  value: subValue,
                  onChanged: (value) {
                    setState(() {
                      subValue = value!;
                    });
                  },
                ),
                Expanded(
                  child: RichText(
                    text: const TextSpan(children: [
                      TextSpan(
                        text: "By signing up, you agree to the ",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                          text: "Terms of Service and Privacy Policy",
                          style: TextStyle(
                            fontSize: 14,
                            color: backgroundClr,
                            fontWeight: FontWeight.bold,
                          )),
                    ]),
                    textAlign: TextAlign.left,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 27,
            ),
            CustomButton(
              buttonText: "Sign up",
              onTap: () {},
            ),
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text("Or with"),
            ),
            Container(
              height: 56,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 2,
                  color: style16Clr,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/google_icon.png"),
                  const Text(
                    "Sign Up with Google",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            RichText(
                text: const TextSpan(children: [
              TextSpan(
                text: "Already have an account? ",
                style: style16,
              ),
              TextSpan(
                  text: "Login",
                  style: TextStyle(
                      fontSize: 16,
                      color: backgroundClr,
                      fontWeight: FontWeight.w500)),
            ]))
          ],
        ),
      ),
    );
  }
}
