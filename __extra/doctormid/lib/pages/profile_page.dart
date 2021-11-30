import 'package:doctor_mid/utils/colors.dart';
import 'package:doctor_mid/utils/decorations.dart';
import 'package:doctor_mid/utils/styles.dart';
import 'package:doctor_mid/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MyScaffold(
      color: Colors.white,
      body: getBody(size),
    );
  }

  getBody(Size size) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          CircularAvatar(
                              imagePath:
                                  'assets/images/ic_construction_logo.png',
                              imageSize: 76),
                          Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                decoration: appCounterDecoration(appBgColor),
                                child: CustomizedTouchEventIconButton(
                                  path: 'assets/images/ic_plus.png',
                                  height: 12,
                                  width: 12,
                                  horizontalPad: 6,
                                  verticalPad: 6,
                                  color: Colors.white,
                                  callback: () {},
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 40,
                        decoration: borderDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                              child: MyTextField(
                            hint: 'Nombre',
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 40,
                        decoration: borderDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                              child: MyTextField(
                            hint: 'Appelido',
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 40,
                        decoration: borderDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                              child: MyTextField(
                            hint: '@correo.com',
                            keyboardType: TextInputType.emailAddress,
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 40,
                        alignment: Alignment.center,
                        decoration: borderDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            children: [
                              Text(
                                '12/06/1992',
                                style: regularWhiteText14(Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Text(
                            'Sexo',
                            style: regularWhiteText14(Colors.grey),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  height: 30,
                                  child: CheckboxContent(
                                    value: false,
                                    content: 'Mujer',
                                  )),
                              Container(
                                  height: 30,
                                  child: CheckboxContent(
                                    value: true,
                                    content: 'Hombre',
                                  )),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 40,
                          decoration: borderDecoration(),
                          child: DropDownField(
                            text: 'Pais',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 40,
                          decoration: borderDecoration(),
                          child: DropDownField(
                            text: 'Estado',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Container(
                          height: 40,
                          decoration: borderDecoration(),
                          child: DropDownField(
                            text: 'Pais',
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: Container(
                          height: 40,
                          decoration: borderDecoration(),
                          child: DropDownField(
                            text: 'Estado',
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Container(
                        height: 40,
                        decoration: borderDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                              child: MyTextField(
                            hint: 'Contrasena',
                            obscureText: true,
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 40,
                        decoration: borderDecoration(),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Center(
                              child: MyTextField(
                            hint: 'Confirmar Contrasena',
                            obscureText: true,
                          )),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                  Container(
                    decoration: rectangularAppBgColorBoxDecorationWithRadius(
                        20, 20, 20, 20),
                    child: CustomizedButton(
                      text: 'ENVIAR',
                      textColor: Colors.white,
                      verticalPadding: 5,
                      style: boldWhiteText32(Colors.white),
                    ),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
