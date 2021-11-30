import 'package:doctor_mid/components/component_button.dart';
import 'package:doctor_mid/components/component_form_fields.dart';
import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/const_images_paths.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';

class ValidacionDelCelularScreen extends StatefulWidget {
  @override
  _ValidacionDelCelularScreenState createState() =>
      _ValidacionDelCelularScreenState();
}

class _ValidacionDelCelularScreenState
    extends State<ValidacionDelCelularScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ConstantColor.APP_COLOR,
      body: ListView(
        children: [
          ComponentSizedBox.topMargin(size: 60),
          Padding(
            padding: const EdgeInsets.only(left: 10.0, right: 10),
            child: Card(
              elevation: 2,
              child: Container(
                height: 500,
                width: 360,
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20)),
                child: Column(
                  children: [
                    ComponentSizedBox.topMargin(size: 20),
                    Image.asset(
                      ImagePath.signup_icon,
                      width: 2000,
                      height: 60,
                      fit: BoxFit.scaleDown,
                    ),
                    ComponentSizedBox.topMargin(size: 20),
                    ComponentText.buildTextWidget(
                        title: 'Sign Up',
                        fontWeight: FontWeight.bold,
                        fontSize: 20),
                    ComponentSizedBox.topMargin(size: 20),
                    ComponentText.buildTextWidget(
                        title:
                            "Enter the 6 digit code that we have sent you by SMS",
                        color: Colors.grey,
                        maxLines: 2),
                    ComponentSizedBox.topMargin(size: 20),
                    FormFieldComponent.roundedFormField(
                      suffixIcon: Icons.domain_verification_outlined,
                    ),
                    ComponentSizedBox.topMargin(size: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 50.0, right: 20),
                      child: ComponentText.buildTextWidget(
                          title:
                              "Due to saturation,the SMS may take time to arrive,you can reapply in 30 minutes.",
                          color: Colors.grey,
                          maxLines: 2),
                    ),
                    ComponentSizedBox.topMargin(size: 40),
                    Row(
                      children: [
                        ComponentSizedBox.sideMargin(size: 130),
                        Icon(
                          Icons.lock_outline,
                          color: Colors.grey,
                        ),
                        ComponentText.buildTextWidget(
                            title: 'Resend Code', color: Colors.grey)
                      ],
                    ),
                    ComponentSizedBox.topMargin(size: 30),
                    ComponentButton.buildTransparentButton(
                        height: 40,
                        width: 220,
                        btnColor: ConstantColor.APP_COLOR,
                        borderColor: ConstantColor.APP_COLOR,
                        texColor: Colors.white,
                        fontsize: 20,
                        title: "CONFIRM"),
                    ComponentSizedBox.topMargin(size: 30),
                    Row(
                      children: [
                        ComponentSizedBox.sideMargin(size: 70),
                        ComponentText.buildTextWidget(
                            title: 'you already have an account?',
                            color: Colors.grey),
                        ComponentText.buildTextWidget(
                            title: 'Log In', color: ConstantColor.APP_COLOR),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
