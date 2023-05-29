import 'package:flutter/material.dart';
import 'package:montra_expense_tracker/screens/custom_style.dart';

class CreateBudget extends StatelessWidget {
  const CreateBudget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: violet100,
      appBar: AppBar(
        title: const Text(
          "Create Budget",
          style: TextStyle(
            fontSize: 18,
            color: light80,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
    );
  }
}
