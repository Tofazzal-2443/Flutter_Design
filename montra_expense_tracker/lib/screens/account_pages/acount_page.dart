import 'package:flutter/material.dart';
import 'package:montra_expense_tracker/widgets/custom_button.dart';

import '../custom_style.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundWClr,
      appBar: AppBar(
        title: const Text(
          "Account",
          style: title3,
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              height: 163,
              width: double.infinity,
              child: Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: ClipRRect(
                      child: Image.asset(
                        "assets/images/BG.png",
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, -0.5),
                    child: Text(
                      "Account Balance",
                      style: myStyle(
                        14,
                        dark25,
                        FontWeight.w500,
                      ),
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0, 0.2),
                    child: Text(
                      "\$9400",
                      style: myStyle(
                        40,
                        dark75,
                        FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            DetailAccountCard(

              title: "Wallet",
              many: "\$400",
            ),
            DetailAccountCard(

              title: "Wallet",
              many: "\$400",
            ),
            DetailAccountCard(

              title: "Wallet",
              many: "\$400",
            ),
            DetailAccountCard(

              title: "Wallet",
              many: "\$400",
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(buttonText: "+ Add new wallet", onTap: (){})
          ],
        ),
      ),
    );
  }
}

class DetailAccountCard extends StatelessWidget {
  DetailAccountCard({
    super.key,

    required this.title,
    required this.many,
  });

  String title;
  String many;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      child: Padding(
        padding: EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: BoxDecoration(
                    color: blue20,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(
                    "",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    title,
                    style: myStyle(
                      18,
                      dark100,
                      FontWeight.w600,
                    ),
                  ),
                ),

              ],
            ),
            Text(
              many,
              style: myStyle(
                18,
                dark100,
                FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
