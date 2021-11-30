import 'package:doctor_mid/constants.dart';
import 'package:doctor_mid/utils/colors.dart';
import 'package:doctor_mid/utils/decorations.dart';
import 'package:doctor_mid/utils/styles.dart';
import 'package:doctor_mid/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatMessagePage extends StatefulWidget {
  const ChatMessagePage({Key? key}) : super(key: key);

  @override
  _ChatMessagePageState createState() => _ChatMessagePageState();
}

class _ChatMessagePageState extends State<ChatMessagePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MyScaffold(
      appBar: getAppBar(),
      body: getBody(size),
    );
  }

  getAppBar() {
    return PreferredSize(
        child: Container(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              child: Row(
                children: [
                  CustomizedTouchEventIconButton(
                      path: 'assets/images/ic_back_btn.png',
                      width: 16,
                      height: 16,
                      color: Colors.white,
                      callback: () {
                        Navigator.pop(context);
                      }),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        CircularAvatar(imagePath: '', imageSize: 36),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          'Manual Macias',
                          style: boldWhiteText14(Colors.white),
                        ),
                      ],
                    ),
                  ),
                  CustomizedTouchEventIconButton(
                      path: 'assets/images/ic_menu.PNG',
                      width: 16,
                      height: 16,
                      color: Colors.white,
                      callback: () {})
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
              Expanded(
                child: ListView.builder(
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      if (index % 2 == 0) {
                        return _buildSenderItem(size);
                      } else {
                        return _buildReceiverItem(size);
                      }
                    }),
              ),
              SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 40,
                          decoration:
                              rectangularWhiteBoxDecorationWithRadiusElevation(
                                  40, 4),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: MyTextField(
                              hint: 'Type here',
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        decoration: appCounterDecoration(appBgColor),
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset(
                            'assets/images/ic_send.png',
                            height: 24,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10,)
            ],
          ),
        ))
      ],
    );
  }

  _buildSenderItem(Size size) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                  width: size.width*0.5,
                  decoration:
                      rectangularGreenBoxDecorationWithRadiusElevation(12, 4),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    child: Text(
                      '${Constants.dummy}',
                      style: regularWhiteText14(Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      '26 May 2021 - 11:04 am',
                      style: boldWhiteText8(Colors.grey),
                    ),
                    SizedBox(width: 5,),
                    Image.asset('assets/images/ic_double_tick.png',height: 16,color: Colors.blue,)
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  _buildReceiverItem(Size size) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: size.width*0.5,
            decoration: rectangularWhiteBoxDecorationWithRadiusElevation(12, 4),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: Text(
                '${Constants.dummy}',
                style: regularWhiteText14(Colors.black),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            '26 May 2021 - 11:04 am',
            style: boldWhiteText8(Colors.grey),
          )
        ],
      ),
    );
  }
}
