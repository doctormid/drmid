import 'package:doctor_mid/utils/colors.dart';
import 'package:doctor_mid/utils/decorations.dart';
import 'package:doctor_mid/utils/styles.dart';
import 'package:doctor_mid/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeleteServiceThird extends StatefulWidget {
  const DeleteServiceThird({Key? key}) : super(key: key);

  @override
  _DeleteServiceThirdState createState() => _DeleteServiceThirdState();
}

class _DeleteServiceThirdState extends State<DeleteServiceThird> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MyScaffold(
      color: offwhite,
      body: getBody(size),
      bottomNavigationBar: getBottomNavigatonBar(),
    );
  }

  getBody(Size size) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            decoration: rectangularWhiteBoxDecorationWithRadius(0),
            child: Padding(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Detalles del pago',
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
                    children: [
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: Column(
                          children: List.generate(
                              2,
                              (index) => Row(
                                    children: [
                                      Expanded(
                                          flex: 2,
                                          child: Text(
                                            '1',
                                            textAlign: TextAlign.start,
                                            style:
                                                regularWhiteText14(Colors.grey),
                                          )),
                                      Expanded(
                                          flex: 4,
                                          child: Text(
                                            'Consultation',
                                            textAlign: TextAlign.start,
                                            style:
                                                regularWhiteText14(Colors.grey),
                                          )),
                                      Expanded(
                                          flex: 6,
                                          child: Text(
                                            '\$3000.00 MXN',
                                            textAlign: TextAlign.end,
                                            style:
                                                regularWhiteText14(Colors.grey),
                                          ))
                                    ],
                                  )),
                        ),
                      )
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
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Subtotal',
                            textAlign: TextAlign.start,
                            style: boldWhiteText14(Colors.black),
                          ),
                          Text(
                            '\$3500.00 MXN',
                            textAlign: TextAlign.start,
                            style: regularWhiteText14(Colors.grey),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Descuento',
                            textAlign: TextAlign.start,
                            style: regularWhiteText14(Colors.grey),
                          ),
                          Text(
                            '-\$150.00 MXN',
                            textAlign: TextAlign.start,
                            style: regularWhiteText14(Colors.grey),
                          )
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Porcentaje',
                        textAlign: TextAlign.start,
                        style: regularWhiteText14(Colors.grey),
                      ),
                      Text(
                        '-\$750.00 MXN',
                        textAlign: TextAlign.start,
                        style: regularWhiteText14(Colors.grey),
                      )
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
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Metodo de pago',
                            textAlign: TextAlign.start,
                            style: boldWhiteText14(Colors.black),
                          ),
                          Text(
                            'Tarjetda de debito/credito',
                            textAlign: TextAlign.start,
                            style: regularWhiteText14(Colors.grey),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Porcentaje de pago',
                            textAlign: TextAlign.start,
                            style: boldWhiteText14(Colors.black),
                          ),
                          Text(
                            '100%',
                            textAlign: TextAlign.start,
                            style: regularWhiteText14(Colors.grey),
                          )
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
                            'Total del servicio',
                            textAlign: TextAlign.start,
                            style: boldWhiteText18(Colors.black),
                          ),
                          Text(
                            '\$2600.00 MXN',
                            textAlign: TextAlign.start,
                            style: boldWhiteText18(appBgColor),
                          )
                        ],
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
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Column(
                children: [
                  Container(
                    decoration: borderDecoration(),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          Expanded(
                              child: MyTextField(
                            hint: 'Solicito una factura',
                            verticalPad: 10,
                          )),
                          SizedBox(
                            width: 10,
                          ),
                          Image.asset(
                            'assets/images/ic_check.png',
                            color: Colors.grey,
                            height: 24,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Revise la lista de servicios antes de\nconfrimar. Una vez confirmado, no\nse puede modificar',
                    textAlign: TextAlign.center,
                    style: boldWhiteText14(Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration:
                        rectangularAppBgColorBoxDecorationWithRadiusElevation(
                            20, 20, 20, 20, 4),
                    child: CustomizedButton(
                      text: 'Pagar Ahora',
                      textColor: Colors.white,
                      verticalPadding: 10,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  getBottomNavigatonBar() {
    return AppBottomBar();
  }
}
