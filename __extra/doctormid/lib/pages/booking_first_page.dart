import 'package:doctor_mid/utils/decorations.dart';
import 'package:doctor_mid/utils/styles.dart';
import 'package:doctor_mid/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookingFirstPage extends StatefulWidget {
  const BookingFirstPage({Key? key}) : super(key: key);

  @override
  _BookingFirstPageState createState() => _BookingFirstPageState();
}

class _BookingFirstPageState extends State<BookingFirstPage> {
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
                          'Servicios',
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
                                    decoration:
                                        appCounterDecoration(Colors.orangeAccent),
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
          decoration: rectangularWhiteBoxDecorationWithCurves(20, 0, 0, 20),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Para Programar una cita, seleccione el dia y la hona disponible, luego confirme el servicio de reserva en el carrito',
                  style: regularWhiteText14(Colors.black),
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Tu Carro de compra esta vacio, continua\nexplorando y agenda un servicio',
                  textAlign: TextAlign.center,
                  style: regularWhiteText18(Colors.grey),
                ),
                SizedBox(
                  height: 40,
                ),
                Container(
                  decoration:
                      rectangularAppBgColorBoxDecorationWithRadiusElevation(
                          20, 20, 20, 20, 4),
                  child: CustomizedButton(
                    text: 'Explorar',
                    verticalPadding: 10,
                    textColor: Colors.white,
                    style: boldWhiteText18(Colors.white),
                  ),
                )
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
