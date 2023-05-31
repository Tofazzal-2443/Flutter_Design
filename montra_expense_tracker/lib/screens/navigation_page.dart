import 'package:flutter/material.dart';
import 'package:montra_expense_tracker/screens/budget_pages/budget_page.dart';
import 'package:montra_expense_tracker/screens/custom_style.dart';
import 'package:montra_expense_tracker/screens/home_pages/home_page.dart';
import 'package:montra_expense_tracker/screens/profile_pages/profile_page.dart';
import 'package:montra_expense_tracker/screens/transaction_pages/transaction_page.dart';

class NabBarPage extends StatefulWidget {
  NabBarPage({Key? key}) : super(key: key);

  @override
  State<NabBarPage> createState() => _NabBarPageState();
}

class _NabBarPageState extends State<NabBarPage> {
  int currentTab = 0;

  final List<Widget> screens = [
    HomePage(),
    TransactionPage(),
    BudgetPage(),
    ProfilePage(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();

  Widget currentScreen = HomePage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(

        child: Icon(Icons.add),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: backgroundWClr,
        //shape: CircularNotchedRectangle(),
        //notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Left Tab bar Icons
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = HomePage();
                        currentTab = 0;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.dashboard_outlined,
                          color: currentTab == 0 ? violet100 : dark75,
                        ),
                        SizedBox(height: 8,),
                        Text(
                            "My Task",
                            style: TextStyle(
                              fontSize: 10,
                              color: currentTab == 0 ? violet100 : dark75,
                              fontWeight: FontWeight.w400,
                            )
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = TransactionPage();
                        currentTab = 1;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.calendar_today_outlined,
                          color: currentTab == 1 ? violet100 : dark75,
                        ),
                        SizedBox(height: 8,),
                        Text(
                            "Calendar",
                            style: TextStyle(
                              fontSize: 10,
                              color: currentTab == 1 ? violet100 : dark75,
                              fontWeight: FontWeight.w400,
                            )
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              //Right Tab bar icons
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = BudgetPage();
                        currentTab = 2;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.request_page_outlined,
                          color: currentTab == 2 ? violet100 : dark75,
                        ),
                        SizedBox(height: 8,),
                        Text(
                            "Project",
                            style: TextStyle(
                              fontSize: 10,
                              color: currentTab == 2 ? violet100 : dark75,
                              fontWeight: FontWeight.w400,
                            )
                        ),
                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  MaterialButton(
                    onPressed: () {
                      setState(() {
                        currentScreen = ProfilePage();
                        currentTab = 3;
                      });
                    },
                    minWidth: 40,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.person_outline,
                          color: currentTab == 3 ? violet100 : dark75,
                        ),
                        SizedBox(height: 8,),
                        Text(
                            "Profile",
                            style: TextStyle(
                              fontSize: 10,
                              color: currentTab == 3 ? violet100 : dark75,
                              fontWeight: FontWeight.w400,
                            )
                        ),
                      ],
                    ),
                  ),

                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
