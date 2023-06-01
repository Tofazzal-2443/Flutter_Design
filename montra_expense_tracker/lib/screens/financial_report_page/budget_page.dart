import 'package:flutter/material.dart';

import '../custom_style.dart';

class BudgetPage extends StatelessWidget {
  const BudgetPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: red100,
        body: Column(
          children: [
            Text(
              "This Month ",
              style: myStyle(
                24,
                light40,
                FontWeight.w600,
              ),
            ),
            Text(
              "You Spend ",
              style: myStyle(
                32,
                light100,
                FontWeight.w600,
              ),
            ),
            Text(
              "\$332",
              style: myStyle(
                64,
                light100,
                FontWeight.w600,
              ),
            ),
            Container(
              height: 331,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20), color: light100),
              child: Column(
                children: [
                  Text(
                    "and your biggest spending is from",
                    style: myStyle(
                      24,
                      dark100,
                    ),
                  ),
                  Container(
                    height: 64,
                    width: 156,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(width: 2, color: dark75),
                      color: light100,
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.shopping_bag),
                        Text("Shopping"),
                      ],
                    ),
                  ),
                  Text(
                    "\$120",
                    style: myStyle(
                      72,
                      dark100,
                      FontWeight.w700,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
