import 'package:doctor_mid/utils/colors.dart';
import 'package:doctor_mid/utils/decorations.dart';
import 'package:doctor_mid/utils/styles.dart';
import 'package:doctor_mid/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class OTPPage extends StatefulWidget {
  const OTPPage({Key? key}) : super(key: key);

  @override
  _OTPPageState createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MyScaffold(
      body: getBody(size),
    );
  }

  getBody(Size size) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Stack(
              children: [
                CustomizedTouchEventIconButton(
                  path: 'assets/images/ic_back_btn.png',
                  height: 24,
                  width: 24,
                  horizontalPad: 20,
                  color: Colors.white,
                  callback: () {
                    Navigator.pop(context);
                  },
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/ic_construction_logo.png')
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Card(
                elevation: 4,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Introduce el condigo de 6 digitos que te hamos enviado por SMS',
                        style: regularWhiteText14(Colors.grey),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Column(
                        children: [
                          MyTextField(keyboardType: TextInputType.number,),
                          Container(
                            height: 1,
                            decoration: appSeparationDarkLineDecoration,
                          )
                        ],
                      ),
                      SizedBox(height: 40,),
                      Text(
                        'Debido a la saturacion el SMS puede\ntardar en ilegar, puedes volver a\nsolictarlo en 30 minutos',
                        textAlign: TextAlign.center,
                        style: regularWhiteText14(Colors.grey),
                      ),
                      SizedBox(height: 40,),
                      Text(
                        'Reenviar codigo',
                        style: boldWhiteText14(appBgColor),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration:
                                  rectangularAppBgColorBoxDecorationWithRadius(
                                      20, 20, 20, 20),
                              child: CustomizedButton(
                                text: 'ENVIAR',
                                textColor: Colors.white,
                                verticalPadding: 5,
                                style: boldWhiteText32(Colors.white),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
