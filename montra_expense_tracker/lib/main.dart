import 'package:flutter/material.dart';
import 'package:montra_expense_tracker/screens/account_pages/acount_page.dart';
import 'package:montra_expense_tracker/screens/forgot_password%20_page/forgot_password.dart';
import 'package:montra_expense_tracker/screens/forgot_password%20_page/forgot_password_email_sent.dart';
import 'package:montra_expense_tracker/screens/forgot_password%20_page/reset_password.dart';
import 'package:montra_expense_tracker/screens/home_pages/home_page.dart';
import 'package:montra_expense_tracker/screens/onboarding_pages/on_board_home.dart';
import 'package:montra_expense_tracker/screens/sign_in_page.dart';
import 'package:montra_expense_tracker/screens/sign_up_screen/sign_up.dart';
import 'package:montra_expense_tracker/screens/sign_up_screen/sign_up_verification.dart';


late Size mq;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: AccountPage(),
      //initialRoute: LaunchScreen.routeName,
      //routes: {
      //  LaunchScreen.routeName: (_) => const LaunchScreen(),
      //},
    );
  }
}
