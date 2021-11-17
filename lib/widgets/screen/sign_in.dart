import 'package:country_code_picker/country_code_picker.dart';
import 'package:drmid/components/component_app_icon.dart';
import 'package:drmid/components/component_button.dart';
import 'package:drmid/components/component_form_fields.dart';
import 'package:drmid/components/component_sized_box.dart';
import 'package:drmid/components/component_text_widgets.dart';
import 'package:drmid/constants/constants_colors.dart';
import 'package:drmid/helpers/auth_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: ConstantColor.APP_COLOR,
        body: Stack(
          children: [
            ClipPath(
              clipper: MyDiagonalPathClipperOne(),
              child: Container(
                height: 520,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ComponentAppIcon.buildAppIcon(),
                  Expanded(
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            ComponentSizedBox.topMargin(size: 20),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 20),
                                child: Card(
                                  elevation: 5,
                                  child: Container(
                                    margin: const EdgeInsets.symmetric(horizontal: 0),
                                    width: MediaQuery.of(context).size.width,
                                    color: Colors.white,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          ComponentSizedBox.topMargin(size: 40),
                                          Row(
                                            children: [
                                              ComponentSizedBox.sideMargin(size: 40),
                                              const Icon(
                                                Icons.person,
                                                color: ConstantColor.APP_COLOR,
                                              ),
                                              ComponentSizedBox.sideMargin(size: 20),
                                              Row(
                                                children: [
                                                  ComponentText.buildTextWidget(
                                                      title: 'Username'),
                                                ],
                                              ),
                                            ],
                                          ),
                                          Center(
                                              child: Padding(
                                            padding:
                                                const EdgeInsets.only(right: 70, left: 20),
                                            child: Row(
                                              children: [
                                                /*  Padding(
                                                  padding: const EdgeInsets.only(left: 50),
                                                  child: Column(
                                                    children: [
                                                      CountryCodePicker(
                                                        onChanged: print,
                                                        // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                                                        initialSelection: 'IT',
                                                        showDropDownButton: true,

                                                        favorite: const ['+39', 'FR'],
                                                        // optional. Shows only country name and flag
                                                        showCountryOnly: true,
                                                        showFlag: false,

                                                        // optional. Shows only country name and flag when popup is closed.
                                                        showOnlyCountryWhenClosed: false,
                                                        // optional. aligns the flag and the Text left
                                                        alignLeft: false,
                                                      ),
                                                      Container(
                                                        margin:
                                                            const EdgeInsets.only(bottom: 20),
                                                        width: 50,
                                                        height: 1.0,
                                                        color: Colors.grey,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                                */
                                                Expanded(
                                                  child:
                                                      FormFieldComponent.formFieldWithoutIcon(
                                                          controller: emailController),
                                                ),
                                              ],
                                            ),
                                          )),
                                          ComponentSizedBox.topMargin(size: 20),
                                          Row(
                                            children: [
                                              ComponentSizedBox.sideMargin(size: 40),
                                              const Icon(Icons.vpn_key,
                                                  color: ConstantColor.APP_COLOR),
                                              ComponentSizedBox.sideMargin(size: 20),
                                              ComponentText.buildTextWidget(
                                                  title: 'Type your password'),
                                            ],
                                          ),
                                          Center(
                                              child: FormFieldComponent.formFieldWithoutIcon(
                                                  controller: passwordController,
                                                  isObscure: true)),
                                          ComponentSizedBox.topMargin(size: 10),
                                          Padding(
                                            padding: const EdgeInsets.only(left: 90.0),
                                            child: Align(
                                              alignment: Alignment.center,
                                              child: ComponentText.buildTextWidget(
                                                  title: 'forgot password'),
                                            ),
                                          ),
                                          ComponentSizedBox.topMargin(size: 60),
                                          Center(
                                            child: ComponentButton.buildTransparentButton(
                                                height: 40,
                                                width: 220,
                                                btnColor: ConstantColor.APP_COLOR,
                                                borderColor: ConstantColor.APP_COLOR,
                                                texColor: Colors.white,
                                                fontsize: 20,
                                                onPressed: () async {
                                                  //setState(() => _loadingButton1 = true);
                                                  try {
                                                    await AuthHelper.instance()
                                                        .signInWithEmailAndPass(
                                                            emailController.text,
                                                            passwordController.text);

                                                    if (AuthHelper.instance().isAnonymous()) {
                                                      return;
                                                    }
                                                    await Phoenix.rebirth(context);
                                                  } finally {
                                                    //setState(() => _loadingButton1 = false);
                                                  }
                                                },
                                                title: 'Sign In'),
                                          ),
                                          ComponentSizedBox.topMargin(size: 10),
                                          Row(
                                            children: [
                                              ComponentSizedBox.sideMargin(size: 90),
                                              ComponentText.buildTextWidget(
                                                  title: 'are you new?,'),
                                              ComponentSizedBox.sideMargin(size: 5),
                                              ComponentText.buildTextWidget(
                                                title: 'sign up',
                                                textDecoration: TextDecoration.underline,
                                                color: ConstantColor.APP_COLOR,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ],
                                          ),
                                          ComponentSizedBox.topMargin(size: 16)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
}

class MyDiagonalPathClipperOne extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0.0, size.height - 200.0)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0.0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
