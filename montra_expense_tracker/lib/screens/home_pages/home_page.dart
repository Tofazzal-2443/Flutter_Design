import 'package:flutter/material.dart';
import 'package:montra_expense_tracker/screens/custom_style.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String dropdownvalue = 'January';

  var items = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundWClr,
        body: Column(
          children: [
            //Top Section Start
            Container(
              height: 312,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xffFFF6E5),
                      Color(0xffF8EDD8),
                    ]),
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CircleAvatar(
                          radius: 25,
                          backgroundColor: violet100,
                          child: CircleAvatar(
                            radius: 23,
                            backgroundColor: light60,
                            child: CircleAvatar(
                              radius: 21,
                              backgroundImage: AssetImage(
                                  "assets/images/on_boarding_images/logo.png"),
                            ),
                          ),
                        ),
                        DropdownButton(
                          value: dropdownvalue,
                          icon: const Icon(
                            Icons.keyboard_arrow_down,
                            color: violet100,
                          ),

                          borderRadius: BorderRadius.circular(10),
                          //focusColor: violet40,
                          //dropdownColor: violet60,
                          items: items.map((String items) {
                            return DropdownMenuItem(
                              value: items,
                              child: Text(
                                items,
                                style: regular3,
                              ),
                            );
                          }).toList(),
                          onChanged: (String? newValue) {
                            setState(() {
                              dropdownvalue = newValue!;
                            });
                          },
                        ),
                        const Icon(
                          Icons.notifications,
                          color: violet100,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 14,
                    ),
                    Text(
                      "Account Balance",
                      style: myStyle(
                        14,
                        dark25,
                        FontWeight.w500,
                      ),
                    ),
                    SizedBox(
                      height: 9,
                    ),
                    Text(
                      "\$9400",
                      style: myStyle(
                        40,
                        dark75,
                        FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      height: 27,
                    ),
                    Row(
                      children: [
                        //Income start *****************
                        Expanded(
                          child: Container(
                            height: 80,
                            decoration: BoxDecoration(
                              color: green100,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(16),
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: light40,
                                  ),
                                  child: Image.asset(
                                      "assets/icons/Glyph/Finance/income.png"),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Income",
                                      style: myStyle(
                                        14,
                                        light80,
                                        FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "\$5000",
                                      style: myStyle(
                                        22,
                                        light80,
                                        FontWeight.w600,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        //Income end *****************
                        const SizedBox(
                          width: 14,
                        ),
                        //Expenses Start *****************
                        Expanded(
                          child: Container(
                            height: 80,
                            decoration: BoxDecoration(
                              color: red100,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.all(16),
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15),
                                    color: light40,
                                  ),
                                  child: Image.asset(
                                      "assets/icons/Glyph/Finance/expense.png"),
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Expenses",
                                      style: myStyle(
                                        14,
                                        light80,
                                        FontWeight.w500,
                                      ),
                                    ),
                                    Text(
                                      "\$5000",
                                      style: myStyle(
                                        22,
                                        light80,
                                        FontWeight.w600,
                                      ),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        //Expenses end *****************
                      ],
                    ),
                  ],
                ),
              ),
            ),
            //Top section End
          ],
        ),
      ),
    );
  }
}
