import 'package:doctor_mid/utils/colors.dart';
import 'package:doctor_mid/utils/decorations.dart';
import 'package:doctor_mid/utils/styles.dart';
import 'package:doctor_mid/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset('assets/images/ic_construction_logo.png')],
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
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.person,
                            color: appBgColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Numero Celular',
                                  style: regularWhiteText14(Colors.grey),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Row(
                                            children: [
                                              Text(
                                                '+52',
                                                style: regularWhiteText14(
                                                    Colors.black),
                                              ),
                                              SizedBox(
                                                width: 5,
                                              ),
                                              Icon(Icons.arrow_drop_down_sharp)
                                            ],
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          flex: 8,
                                          child: Container(
                                            height: 40,
                                            child: MyTextField(
                                              keyboardType:
                                                  TextInputType.number,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 2,
                                          child: Container(
                                            height: 1,
                                            decoration:
                                                appSeparationDarkLineDecoration,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Expanded(
                                          flex: 8,
                                          child: Container(
                                            height: 1,
                                            decoration:
                                                appSeparationDarkLineDecoration,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Icon(
                            Icons.vpn_key_sharp,
                            color: appBgColor,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Escriba su contrasena',
                                  style: regularWhiteText14(Colors.grey),
                                ),
                                Column(
                                  children: [
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 8,
                                          child: Container(
                                            height: 40,
                                            child: MyTextField(
                                              obscureText: true,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Expanded(
                                          flex: 8,
                                          child: Container(
                                            height: 1,
                                            decoration:
                                                appSeparationDarkLineDecoration,
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Has Olvidado tu contrasena?',
                            style: regularWhiteText14(Colors.grey),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                      Column(
                        children: [
                          Text(
                            'o iniciar sesion usando :',
                            style: regularWhiteText14(Colors.grey),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                decoration: appCounterDecoration(appBgColor),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'assets/images/ic_facebook.png',
                                    height: 36,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Container(
                                decoration: appCounterDecoration(appBgColor),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.asset(
                                    'assets/images/ic_gmail.png',
                                    height: 36,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              decoration:
                                  rectangularAppBgColorBoxDecorationWithRadius(
                                      20, 20, 20, 20),
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.symmetric(vertical: 5),
                                  child: Text(
                                    'INICIAR SESION',
                                    style: boldWhiteText32(Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'eres nuevo?',
                            style: regularWhiteText14(Colors.grey),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.pushNamed(context, '/register');
                            },
                            child: Text(
                              'Registrate',
                              style: boldWhiteText14(appBgColor,
                                  decoration: TextDecoration.underline),
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
