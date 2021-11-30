import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';

class TotalTabScreen extends StatefulWidget {
  @override
  _TotalTabScreenState createState() => _TotalTabScreenState();
}

class _TotalTabScreenState extends State<TotalTabScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 350,
              width: MediaQuery.of(context).size.width,
              color: ConstantColor.APP_COLOR,
              child: Column(
                children: [
                  ComponentSizedBox.topMargin(size: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ComponentText.buildTextWidget(
                              title: 'Total\nwithout\ncommission',
                              color: Colors.white,
                              maxLines: 3),
                          ComponentSizedBox.topMargin(size: 10),
                          ComponentText.buildTextWidget(
                              title: '\$172.00',
                              color: Colors.greenAccent,
                              fontWeight: FontWeight.bold),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ComponentText.buildTextWidget(
                              title: 'Total\nwith\ncommission',
                              color: Colors.white,
                              maxLines: 3),
                          ComponentSizedBox.topMargin(size: 10),
                          ComponentText.buildTextWidget(
                              title: '\$200.00',
                              color: Colors.greenAccent,
                              fontWeight: FontWeight.bold),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ComponentText.buildTextWidget(
                              title: 'commission',
                              color: Colors.white,
                              maxLines: 3),
                          ComponentSizedBox.topMargin(size: 10),
                          ComponentText.buildTextWidget(
                              title: '\$28.00',
                              color: Colors.greenAccent,
                              fontWeight: FontWeight.bold),
                        ],
                      ),
                    ],
                  ),
                  ComponentSizedBox.topMargin(size: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //ComponentSizedBox.sideMargin(size: 30),
                      Column(
                        children: [
                          Container(
                            width: 8,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          ComponentText.buildTextWidget(
                              title: 'Mon',
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 8,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          ComponentText.buildTextWidget(
                              title: 'Tue',
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 8,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          ComponentText.buildTextWidget(
                              title: 'Wed',
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 8,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          ComponentText.buildTextWidget(
                              title: 'Thu',
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 8,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          ComponentText.buildTextWidget(
                              title: 'Fri',
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 8,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          ComponentText.buildTextWidget(
                              title: 'Sat',
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ],
                      ),
                      Column(
                        children: [
                          Container(
                            width: 8,
                            height: 150,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                          ComponentText.buildTextWidget(
                              title: 'Sun',
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ],
                      ),
                    ],
                  ),
                  ComponentSizedBox.topMargin(size: 20),
                  Row(
                    children: [
                      ComponentSizedBox.sideMargin(size: 80),
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      ComponentSizedBox.sideMargin(size: 10),
                      ComponentText.buildTextWidget(
                          title: 'Incomes',
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                      ComponentSizedBox.sideMargin(size: 80),
                      Container(
                        height: 15,
                        width: 15,
                        decoration: BoxDecoration(
                          color: Colors.greenAccent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      ComponentSizedBox.sideMargin(size: 10),
                      ComponentText.buildTextWidget(
                          title: 'Payments',
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ],
                  )
                ],
              ),
            ),
            ComponentSizedBox.topMargin(size: 10),
            Padding(
              padding: const EdgeInsets.only(left: 15.0, right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD-l889V8_Nv64SYZECELEBUzvWgmgxdlAow&usqp=CAU'),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ComponentText.buildTextWidget(
                          title: 'Alberto ramirez Sanchez'),
                      ComponentSizedBox.topMargin(size: 5),
                      ComponentText.buildTextWidget(title: 'Revition'),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ComponentText.buildTextWidget(
                          title: '+\$15.00 M.N ',
                          fontWeight: FontWeight.bold,
                          color: ConstantColor.APP_COLOR),
                      ComponentSizedBox.topMargin(size: 5),
                      ComponentText.buildTextWidget(title: '2021/05/24'),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              height: 20,
              thickness: 2,
            ),
          ],
        ),
      ),
    );
  }
}
