import 'package:flutter/material.dart';
import 'package:montra_expense_tracker/screens/custom_style.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundWClr,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: backgroundClr, width: 2),
            color: Colors.black
          ),
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.arrow_drop_down_outlined),
            Text(
              "Month Name",
              style: myStyle(
                14,
                Colors.black,
                FontWeight.w500,
              ),
            ),
          ],
        ),

        actions: [
          Icon(Icons.notifications),
        ],
      ),
    );
  }
}
