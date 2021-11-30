import 'package:doctor_mid/utils/colors.dart';
import 'package:doctor_mid/utils/decorations.dart';
import 'package:doctor_mid/utils/styles.dart';
import 'package:doctor_mid/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DeleteServiceFirst extends StatefulWidget {
  const DeleteServiceFirst({Key? key}) : super(key: key);

  @override
  _DeleteServiceFirstState createState() => _DeleteServiceFirstState();
}

class _DeleteServiceFirstState extends State<DeleteServiceFirst> {
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
                          'Resumen',
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
            decoration:
            rectangularOffWhiteBoxDecorationWithCurves(20, 0, 0, 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    decoration:
                    rectangularWhiteBoxDecorationWithCurves(20, 0, 0, 20),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Servicios Agendados',
                                  textAlign: TextAlign.center,
                                  style: boldWhiteText14(Colors.black),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'Los costos estan sujetos a cambios segun la valoracion fisica',
                                  textAlign: TextAlign.center,
                                  style: boldWhiteText14(Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: rectangularWhiteBoxDecorationWithRadius(0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        children: [
                          Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Manual Macias',
                                      textAlign: TextAlign.center,
                                      style: regularWhiteText14(Colors.black),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                    child: Text(
                                      'CONSULTATION',
                                      textAlign: TextAlign.center,
                                      style: regularWhiteText14(Colors.grey),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  'MEXICALI, BAJA CALIFORNIA, MEXICO',
                                  textAlign: TextAlign.center,
                                  style: regularWhiteText14(Colors.grey),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  '20 APR 2021 - 08:00',
                                  textAlign: TextAlign.center,
                                  style: regularWhiteText14(Colors.grey),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: rectangularWhiteBoxDecorationWithRadius(0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 20),
                      child: Column(
                        children: [
                          Container(
                            decoration:
                            rectangularWhiteBoxDecorationWithRadiusElevation(
                                8, 4),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Row(
                                children: [
                                  CircularAvatar(imagePath: '', imageSize: 76),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
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
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '\$3000.00 MXN',
                                                  style: regularWhiteText14(
                                                      Colors.red,
                                                      decoration: TextDecoration
                                                          .lineThrough),
                                                ),
                                                Text(
                                                  '\$350.00 MXN',
                                                  style:
                                                  boldWhiteText14(appBgColor),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              decoration: borderDecoration(),
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 10,
                                                    vertical: 5),
                                                child: Text(
                                                  'CNT:1',
                                                  style: regularWhiteText14(
                                                      Colors.grey),
                                                ),
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
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration:
                            rectangularWhiteBoxDecorationWithRadiusElevation(
                                8, 4),
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 10),
                              child: Row(
                                children: [
                                  CircularAvatar(imagePath: '', imageSize: 76),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  'Consultation',
                                                  style: boldWhiteText14(
                                                      Colors.black),
                                                ),
                                                Text(
                                                  'Manuel Macias',
                                                  style: regularWhiteText14(
                                                      Colors.grey),
                                                ),
                                              ],
                                            ),
                                            Icon(
                                              Icons.delete,
                                              color: Colors.red,
                                            )
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
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  '\$3000.00 MXN',
                                                  style: regularWhiteText14(
                                                      Colors.red,
                                                      decoration: TextDecoration
                                                          .lineThrough),
                                                ),
                                                Text(
                                                  '\$350.00 MXN',
                                                  style:
                                                  boldWhiteText14(appBgColor),
                                                ),
                                              ],
                                            ),
                                            Container(
                                              decoration: borderDecoration(),
                                              child: Padding(
                                                padding:
                                                const EdgeInsets.symmetric(
                                                    horizontal: 10,
                                                    vertical: 5),
                                                child: Text(
                                                  'CNT:1',
                                                  style: regularWhiteText14(
                                                      Colors.grey),
                                                ),
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
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    decoration: rectangularWhiteBoxDecorationWithRadius(0),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Subtotal',
                                  style: regularWhiteText14(Colors.grey),
                                ),
                                Text(
                                  '\$3500.00 MXN',
                                  style: regularWhiteText14(Colors.grey),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 2,
                            decoration: appSeparationLineDecoration,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Total',
                                      style: regularWhiteText14(Colors.grey),
                                    ),
                                    Text(
                                      '\$3500.00',
                                      style: boldWhiteText14(appBgColor),
                                    ),
                                  ],
                                ),
                                Container(
                                  width: size.width*0.4,
                                  decoration:
                                  rectangularAppBgColorBoxDecorationWithRadius(
                                      20, 20, 20, 20),
                                  child: CustomizedButton(
                                    text: 'Confirmer\nReservacion',
                                    textColor: Colors.white,
                                    verticalPadding: 5,
                                  ),
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
            ),
          ),
        )
      ],
    );
  }

  getBottomNavigatonBar() {
    return AppBottomBar();
  }
}
