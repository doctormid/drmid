import 'package:doctor_mid/utils/decorations.dart';
import 'package:doctor_mid/utils/styles.dart';
import 'package:doctor_mid/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeleteServiceSecond extends StatefulWidget {
  const DeleteServiceSecond({Key? key}) : super(key: key);

  @override
  _DeleteServiceSecondState createState() => _DeleteServiceSecondState();
}

class _DeleteServiceSecondState extends State<DeleteServiceSecond> {
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '',
                          style: boldWhiteText14(Colors.white),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            CustomizedTouchEventIconButton(
                                path: 'assets/images/ic_notifications.png',
                                width: 26,
                                height: 26,
                                color: Colors.white,
                                callback: () {}),
                            SizedBox(
                              width: 5,
                            ),
                            CustomizedTouchEventIconButton(
                                path: 'assets/images/ic_messenger.png',
                                width: 26,
                                height: 26,
                                color: Colors.white,
                                callback: () {}),
                            SizedBox(
                              width: 5,
                            ),
                            Stack(
                              children: [
                                CustomizedTouchEventIconButton(
                                    path: 'assets/images/ic_cart.png',
                                    width: 26,
                                    height: 26,
                                    verticalPad: 5,
                                    color: Colors.white,
                                    callback: () {}),
                                Positioned(
                                  top: 0,
                                  child: Container(
                                    decoration: appCounterDecoration(
                                        Colors.orangeAccent),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: Text(
                                        '2',
                                        style: boldWhiteText10(Colors.white),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
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
              decoration: rectangularOffWhiteBoxDecorationWithCurves(20, 0, 0, 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration:
                    rectangularWhiteBoxDecorationWithCurves(20, 0, 0, 20),
                    child: Padding(
                      padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Detallas de la reservacion',
                            style: boldWhiteText14(Colors.black),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Doctor',
                                    style: boldWhiteText14(Colors.grey),
                                  ),
                                  Text(
                                    'Fecha, hora y lugar',
                                    style: boldWhiteText14(Colors.grey),
                                  ),
                                ],
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                height: 1,
                                decoration: appSeparationLineDecoration,
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    'Dr. Maneul Macias',
                                    style: boldWhiteText14(Colors.grey),
                                  ),
                                  Text(
                                    '20 Abr 2021 - 08:00',
                                    style: boldWhiteText14(Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Text(
                                    'Implantolog MEXICALI, BAJA CALIFORNIA, MEXICO y',
                                    style: boldWhiteText14(Colors.grey),
                                  )),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                    child: Container(
                      decoration: rectangularOffWhiteBoxDecorationWithCurves(
                          8, 8, 8, 8,
                          elevation: 4.0),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Column(
                                children: [
                                  Text(
                                    'Metodos de pago',
                                    style: boldWhiteText18(Colors.black),
                                  ),
                                  SizedBox(height: 5),
                                  Text(
                                    'Elije tu metodo de pago',
                                    style: boldWhiteText14(Colors.grey),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration:
                            rectangularWhiteBoxDecorationWithCurves(0, 8, 8, 0),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10, vertical: 10),
                                  child: Container(
                                    decoration:
                                    rectangularWhiteBoxDecorationWithRadiusElevation(
                                        8, 2),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10, vertical: 10),
                                      child: Row(
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/ic_cart.png',
                                                height: 24,
                                              ),
                                              Image.asset(
                                                'assets/images/ic_cart.png',
                                                height: 24,
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              child: Text(
                                                'Tarjeta de Debito o credito',
                                                style: boldWhiteText14(Colors.grey),
                                              ),
                                            ),
                                          ),
                                          Image.asset(
                                            'assets/images/ic_check.png',
                                            height: 24,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                Column(
                                  children: List.generate(
                                    4,
                                        (index) => Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Row(
                                        children: [
                                          Row(
                                            children: [
                                              Image.asset(
                                                'assets/images/ic_cart.png',
                                                height: 24,
                                              ),
                                              Image.asset(
                                                'assets/images/ic_cart.png',
                                                height: 24,
                                              ),
                                            ],
                                          ),
                                          Expanded(
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(
                                                  horizontal: 10),
                                              child: Column(
                                                crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Paga en ${(index + 1) * 3} pagos de \$927',
                                                    style: boldWhiteText14(
                                                        Colors.grey),
                                                  ),
                                                  Row(
                                                    children: [
                                                      Expanded(
                                                        child: Text(
                                                          '(Tarjeta de credito participantes)',
                                                          style: boldWhiteText12(
                                                              Colors.grey),
                                                        ),
                                                      ),
                                                      Image.asset(
                                                          'assets/images/ic_info.png',
                                                          color: Colors.blue,
                                                          height: 16)
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                          Image.asset(
                                            'assets/images/ic_check.png',
                                            color: Colors.grey,
                                            height: 24,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20,
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
