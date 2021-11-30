import 'package:doctor_mid/utils/colors.dart';
import 'package:doctor_mid/utils/decorations.dart';
import 'package:doctor_mid/utils/styles.dart';
import 'package:doctor_mid/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DeleteServiceFourth extends StatefulWidget {
  const DeleteServiceFourth({Key? key}) : super(key: key);

  @override
  _DeleteServiceFourthState createState() => _DeleteServiceFourthState();
}

class _DeleteServiceFourthState extends State<DeleteServiceFourth> {
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CustomizedTouchEventIconButton(
                      path: 'assets/images/ic_cross.png',
                      width: 16,
                      height: 16,
                      color: Colors.white,
                      callback: () {
                        Navigator.pop(context);
                      }),
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
          decoration: rectangularOffWhiteBoxDecorationWithCurves(0, 0, 0, 0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/ic_construction_logo.png',
                        height: 56,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                '\$2,600',
                                style: regularWhiteText24(Colors.black),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 5),
                                child: Text(
                                  'MXN',
                                  style: regularWhiteText18(Colors.grey),
                                ),
                              ),
                            ],
                          ),
                          Text(
                            'MidReservacion3168786482',
                            style: regularWhiteText12(Colors.black),
                          ),
                        ],
                      ))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Consultation',
                            style: regularWhiteText14(Colors.grey),
                          ),
                          Text(
                            '2250',
                            style: regularWhiteText14(Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 1,
                  decoration: appSeparationLineDecoration,
                ),
                Container(
                  decoration: rectangularWhiteBoxDecorationWithRadius(0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Limpieza dental',
                                  style: regularWhiteText14(Colors.grey),
                                ),
                                Text(
                                  '350',
                                  style: regularWhiteText14(Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 1,
                        decoration: appSeparationLineDecoration,
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            MyTextField(
                              hint: 'Numero de tarjeta',
                              verticalPad: 5,
                            ),
                            Container(
                              height: 1,
                              decoration: appSeparationLineDecoration,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: [
                                  MyTextField(
                                    hint: 'Expira',
                                    verticalPad: 5,
                                  ),
                                  Container(
                                    height: 1,
                                    decoration: appSeparationLineDecoration,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Column(
                                children: [
                                  MyTextField(
                                    hint: 'CVV',
                                    verticalPad: 5,
                                  ),
                                  Container(
                                    height: 1,
                                    decoration: appSeparationLineDecoration,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            MyTextField(
                              hint: 'Email',
                              verticalPad: 5,
                            ),
                            Container(
                              height: 1,
                              decoration: appSeparationLineDecoration,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tu pago serli procesado mediante 3D-secure.',
                              style: boldWhiteText12(Colors.black),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Por favor manten abierta la ventana hasta concluir.',
                              style: boldWhiteText12(Colors.grey),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Container(
                          decoration:
                              rectangularBlueBoxDecorationWithRadiusElevation(
                                  4, 4),
                          child: CustomizedButton(
                            text: 'PAGAR \$,2600.00',
                            textColor: Colors.white,
                            verticalPadding: 10,
                            needIcon: true,
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Text(
                      'Pago procsado de manera segura',
                      style: regularWhiteText14(Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: size.width * 0.35,
                      decoration:
                          rectangularRedBoxDecorationWithRadiusElevation(0, 4),
                      child: CustomizedButton(
                        text: 'Santander',
                        textColor: Colors.white,
                        verticalPadding: 10,
                        needIcon: true,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ))
      ],
    );
  }

  getBottomNavigatonBar() {
    return AppBottomBar();
  }
}
