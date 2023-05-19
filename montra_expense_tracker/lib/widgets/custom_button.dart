import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../screens/custom_style.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.buttonText,
    required this.onTap,
    this.isOutline,
  });

  String buttonText;
  VoidCallback onTap;
  bool? isOutline;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 56,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isOutline == null ? buttonClr1 : buttonClr2,
        ),
        child: Center(
            child: Text(
              buttonText,
              style: isOutline == null ? buttonTextS1 : buttonTextS2,
            )),
      ),
    );
  }
}