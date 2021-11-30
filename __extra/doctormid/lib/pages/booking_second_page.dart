import 'package:doctor_mid/utils/colors.dart';
import 'package:doctor_mid/utils/decorations.dart';
import 'package:doctor_mid/utils/styles.dart';
import 'package:doctor_mid/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class BookingSecondPage extends StatefulWidget {
  const BookingSecondPage({Key? key}) : super(key: key);

  @override
  _BookingSecondPageState createState() => _BookingSecondPageState();
}

class _BookingSecondPageState extends State<BookingSecondPage> {
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
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Agregar mas Servicio',
                          style: boldWhiteText14(appBgColor),
                        ),
                        Image.asset(
                          'assets/images/ic_cart.png',
                          color: Colors.red,
                          height: 24,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Container(
                          decoration:
                          rectangularWhiteBoxDecorationWithRadiusElevation(
                              8, 4),
                          child: Padding(
                            padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            child: Row(
                              children: [
                                CircularAvatar(imagePath: '', imageSize: 76),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Consultation',
                                        style: boldWhiteText14(Colors.black),
                                      ),
                                      Text(
                                        'Manuel Macias',
                                        style: regularWhiteText14(Colors.grey),
                                      ),
                                      RatingBarIndicator(
                                        rating: 2.75,
                                        itemBuilder: (context, index) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        itemCount: 5,
                                        itemSize: 16.0,
                                        direction: Axis.horizontal,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '\$3000.00 MXN',
                                                style: regularWhiteText14(Colors.red,
                                                    decoration:
                                                    TextDecoration.lineThrough),
                                              ),
                                              Text(
                                                '\$350.00 MXN',
                                                style: boldWhiteText14(appBgColor),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            decoration: borderDecoration(),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                              child: Text('CNT:1',style: regularWhiteText14(Colors.grey),),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: 10,),
                        Container(
                          decoration:
                          rectangularWhiteBoxDecorationWithRadiusElevation(
                              8, 4),
                          child: Padding(
                            padding:
                            EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                            child: Row(
                              children: [
                                CircularAvatar(imagePath: '', imageSize: 76),
                                SizedBox(
                                  width: 5,
                                ),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Consultation',
                                                style: boldWhiteText14(Colors.black),
                                              ),
                                              Text(
                                                'Manuel Macias',
                                                style: regularWhiteText14(Colors.grey),
                                              ),
                                            ],
                                          ),
                                          Icon(Icons.delete,color: Colors.red,)
                                        ],
                                      ),
                                      RatingBarIndicator(
                                        rating: 2.75,
                                        itemBuilder: (context, index) => Icon(
                                          Icons.star,
                                          color: Colors.amber,
                                        ),
                                        itemCount: 5,
                                        itemSize: 16.0,
                                        direction: Axis.horizontal,
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                '\$3000.00 MXN',
                                                style: regularWhiteText14(Colors.red,
                                                    decoration:
                                                    TextDecoration.lineThrough),
                                              ),
                                              Text(
                                                '\$350.00 MXN',
                                                style: boldWhiteText14(appBgColor),
                                              ),
                                            ],
                                          ),
                                          Container(
                                            decoration: borderDecoration(),
                                            child: Padding(
                                              padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                                              child: Text('CNT:1',style: regularWhiteText14(Colors.grey),),
                                            ),
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      decoration:
                      rectangularAppBgColorBoxDecorationWithRadiusElevation(
                          20, 20, 20, 20, 4),
                      child: CustomizedButton(
                        text: 'Continuar',
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
