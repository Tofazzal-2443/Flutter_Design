import 'package:flutter/material.dart';
import 'package:montra_expense_tracker/screens/custom_style.dart';

class SignUpVerification extends StatelessWidget {
  const SignUpVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundWClr,
      appBar: AppBar(
        title: Text("Verification", style: style18,),
        backgroundColor: Colors.transparent,
        centerTitle: true,
        elevation: 0,
      ),
      body: Column(

      ),
    );
  }
}
