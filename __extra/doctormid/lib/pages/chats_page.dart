import 'package:doctor_mid/utils/colors.dart';
import 'package:doctor_mid/utils/decorations.dart';
import 'package:doctor_mid/utils/styles.dart';
import 'package:doctor_mid/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatsPage extends StatefulWidget {
  const ChatsPage({Key? key}) : super(key: key);

  @override
  _ChatsPageState createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MyScaffold(
      appBar: getAppBar(),
      body: getBody(size),
      bottomNavigationBar: getBottomNavigatonBar(),
    );
  }

  getAppBar() {
    return PreferredSize(
        child: Container(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      CustomizedTouchEventIconButton(
                          path: 'assets/images/ic_menu.PNG',
                          width: 16,
                          height: 16,
                          color: Colors.white,
                          callback: () {}),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Mesajes',
                        style: boldWhiteText14(Colors.white),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
        preferredSize: Size.fromHeight(55));
  }

  getBody(Size size) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: rectangularWhiteBoxDecorationWithCurves(20, 0, 0, 20),
            child: Column(
              children: [
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                      child: Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: appBgColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: MyTextField(
                            hint: 'Search...',
                          ))
                        ],
                      ),
                    ),
                    Container(
                      height: 1,
                      decoration: appSeparationLineDecoration,
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Row(
                          children: [
                            CircularAvatar(
                              imagePath: '',
                              imageSize: 56,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Expanded(
                              child: Column(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Manual Macias',
                                        style: boldWhiteText14(Colors.black),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text(
                                            '26 May 2021',
                                            style: regularWhiteText12(Colors.grey),
                                          ),
                                        ],
                                      ),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.check,
                                            color: appBgColor,
                                          ),
                                          SizedBox(width: 10,),
                                          Text('Hola Place ...', style: regularWhiteText14(Colors.grey),)
                                        ],
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 10,),
                                  Container(
                                    height: 1,
                                    decoration: appSeparationLineDecoration,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  getBottomNavigatonBar() {
    return AppBottomBar();
  }
}
