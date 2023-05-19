import 'package:flutter/material.dart';
import 'package:montra_expense_tracker/screens/custom_style.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  //static const String routeName = '/Launch Screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundClr,
      body: Stack(
        children: [
          Align(
            alignment: AlignmentDirectional.center,
            child: Container(
              child: Image.asset(
                "assets/images/logobac.png",
              ),
            ),
          ),
          Align(
            alignment: AlignmentDirectional.center,
            child: Container(
              child: Image.asset(
                "assets/images/logo.png",
              ),
            ),
          ),
        ],
      ),
    );
  }
}
