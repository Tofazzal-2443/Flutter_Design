import 'package:flutter/material.dart';
import 'package:montra_expense_tracker/screens/custom_style.dart';
import 'package:montra_expense_tracker/screens/onboarding_pages/page1.dart';
import 'package:montra_expense_tracker/screens/onboarding_pages/page2.dart';
import 'package:montra_expense_tracker/screens/onboarding_pages/page3.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/custom_button.dart';

class OnboardHome extends StatelessWidget {
  OnboardHome({Key? key}) : super(key: key);

  final _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 530,
              child: PageView(
                controller: _controller,
                children: const [
                  Page1(),
                  Page2(),
                  Page3(),
                ],
              ),
            ),
            const SizedBox(
              height: 31,
            ),
            SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const SwapEffect(
                dotColor: buttonClr2,
                activeDotColor: buttonClr1,
              ),
            ),
            const SizedBox(
              height: 33,
            ),
            CustomButton(
              buttonText: "Sign Up",
              onTap: () {},
            ),
            const SizedBox(
              height: 16,
            ),
            CustomButton(
              buttonText: "Login",
              onTap: () {},
              isOutline: true,
            ),
          ],
        ),
      ),
    );
  }
}
