import 'package:country_code_picker/country_code_picker.dart';
import 'package:doctor_mid/components/component_button.dart';
import 'package:doctor_mid/components/component_form_fields.dart';
import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/const_images_paths.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool checkboxvalue = false;
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Column(
          children: [
            ComponentSizedBox.topMargin(size: 50),
            Image.asset(
              ImagePath.signup_icon,
              width: 2000,
              height: 60,
              fit: BoxFit.scaleDown,
            ),
            ComponentSizedBox.topMargin(size: 30),
            Center(
              child: ComponentText.buildTextWidget(
                  title: 'Sign Up', fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ComponentSizedBox.topMargin(size: 20),
            FormFieldComponent.roundedFormField(
              hint: 'First Name',
              suffixIcon: Icons.person_outline,
            ),
            ComponentSizedBox.topMargin(size: 20),
            FormFieldComponent.roundedFormField(
              hint: 'Last Name',
              suffixIcon: Icons.person_outline,
            ),
            ComponentSizedBox.topMargin(size: 20),
            FormFieldComponent.roundedFormField(
              hint: 'Password',
              suffixIcon: Icons.lock_outlined,
            ),
            ComponentSizedBox.topMargin(size: 20),
            FormFieldComponent.roundedFormField(
              hint: 'Confirm Password',
              suffixIcon: Icons.lock_open,
            ),
            ComponentSizedBox.topMargin(size: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 80,
                  height: 40,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: CountryCodePicker(
                    padding: EdgeInsets.all(0.0),
                    onChanged: print,
                    showDropDownButton: true,
                    // Initial selection and favorite can be one of code ('IT') OR dial_code('+39')
                    initialSelection: 'IT',
                    favorite: ['+39', 'FR'],
                    // optional. Shows only country name and flag
                    showCountryOnly: true,
                    showFlag: false,

                    // optional. Shows only country name and flag when popup is closed.
                    showOnlyCountryWhenClosed: false,
                    // optional. aligns the flag and the Text left
                    alignLeft: false,
                  ),
                ),
                ComponentSizedBox.sideMargin(size: 6),
                FormFieldComponent.roundedFormField(
                  width: 190,
                  hint: 'Mobile Number',
                  keyboardType: TextInputType.number,
                  suffixIcon: Icons.domain_verification_outlined,
                ),
              ],
            ),
            ComponentSizedBox.topMargin(size: 30),
            Container(
              height: 60,
              width: 300,
              decoration: BoxDecoration(
                  color: Colors.white70,
                  border: Border.all(color: Colors.grey)),
              child: Row(
                children: [
                  ComponentSizedBox.sideMargin(size: 10),
                  Checkbox(
                      value: checkboxvalue,
                      onChanged: (value) {
                        setState(() {
                          checkboxvalue = value;
                        });
                      }),
                  ComponentSizedBox.sideMargin(size: 10),
                  ComponentText.buildTextWidget(
                      title: 'I\'m not a robot', fontSize: 16)
                ],
              ),
            ),
            ComponentSizedBox.topMargin(size: 10),
            Row(
              children: [
                ComponentSizedBox.sideMargin(size: 40),
                Switch(
                    value: isSwitched,
                    onChanged: (value) {
                      setState(() {
                        isSwitched = value;
                      });
                    }),
                RichText(
                  text: TextSpan(
                    text: 'I accept  ',
                    style: TextStyle(color: Colors.black, fontSize: 14),
                    children: const <TextSpan>[
                      TextSpan(
                          text: 'the terms of use',
                          style: TextStyle(
                              color: ConstantColor.APP_COLOR, fontSize: 14)),
                      TextSpan(
                          text: ' and ',
                          style: TextStyle(color: Colors.black, fontSize: 14)),
                      TextSpan(
                          text: 'privacy policy',
                          style: TextStyle(
                              color: ConstantColor.APP_COLOR, fontSize: 14)),
                    ],
                  ),
                )
              ],
            ),
            ComponentSizedBox.topMargin(size: 10),
            ComponentButton.buildTransparentButton(
                height: 40,
                width: 250,
                btnColor: ConstantColor.APP_COLOR,
                borderColor: ConstantColor.APP_COLOR,
                texColor: Colors.white,
                fontsize: 20,
                title: "Sign Up"),
            ComponentSizedBox.topMargin(size: 10),
            ComponentText.buildTextWidget(
                title: 'you already have an account?'),
            ComponentSizedBox.topMargin(size: 10),
            ComponentButton.buildTransparentButton(
              height: 30,
              width: 140,
              btnColor: Colors.white,
              borderColor: Colors.black,
              texColor: ConstantColor.APP_COLOR,
              fontsize: 16,
              borderRadius: 5,
              title: "Log In",
            ),
            ComponentSizedBox.topMargin(size: 20),
          ],
        ),
      ],
    ));
  }
}
