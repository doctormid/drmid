import 'package:doctor_mid/utils/colors.dart';
import 'package:doctor_mid/utils/decorations.dart';
import 'package:doctor_mid/utils/styles.dart';
import 'package:doctor_mid/utils/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  bool isChecked = false;

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
                      Text('REGISTRATE', style: boldWhiteText32(Colors.grey),),
                      SizedBox(height: 20,),
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
                        height: 80,
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: isChecked,
                            onChanged: (bool? value) {
                              setState(() {
                                isChecked = value!;
                              });
                            },
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              child: Text(
                            'Acepto las condiciones de uso y politicas de privacidad',
                            textAlign: TextAlign.center,
                            style: regularWhiteText14(Colors.grey),
                          ))
                        ],
                      ),
                      SizedBox(
                        height: 80,
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: (){
                                Navigator.pushNamed(context, '/otp');
                              },
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
