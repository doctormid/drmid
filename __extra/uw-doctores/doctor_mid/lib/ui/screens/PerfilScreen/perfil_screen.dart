import 'package:doctor_mid/components/component_button.dart';
import 'package:doctor_mid/components/component_checkBox.dart';
import 'package:doctor_mid/components/component_form_fields.dart';
import 'package:doctor_mid/components/component_rounded_dropDownButton.dart';
import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';

class PerfilScreen extends StatefulWidget {
  @override
  _PerfilScreenState createState() => _PerfilScreenState();
}

class _PerfilScreenState extends State<PerfilScreen> {
  List<String> cities = ['Mexico', 'newyork'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
        backgroundColor: ConstantColor.primaryColor,
        title: Text('Show Profile'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 25.0, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ComponentSizedBox.topMargin(size: 30),
              Center(
                child: CircleAvatar(
                  radius: 35,
                  backgroundImage: NetworkImage(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD-l889V8_Nv64SYZECELEBUzvWgmgxdlAow&usqp=CAU'),
                ),
              ),
              ComponentSizedBox.topMargin(size: 30),
              FormFieldComponent.nonroundedFormField(hint: 'Manuel'),
              ComponentSizedBox.topMargin(size: 10),
              FormFieldComponent.nonroundedFormField(hint: 'Macias'),
              ComponentSizedBox.topMargin(size: 10),
              FormFieldComponent.nonroundedFormField(
                  hint: 'zamora.moy+1@gmail.com'),
              ComponentSizedBox.topMargin(size: 10),
              FormFieldComponent.nonroundedFormField(hint: '1980-10-10'),
              ComponentSizedBox.topMargin(size: 20),
              ComponentText.buildTextWidget(
                title: 'Sex',
              ),
              ComponentSizedBox.topMargin(size: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCheckBox(
                    onChanged: (value) {},
                  ),
                  ComponentText.buildTextWidget(title: 'Female'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomCheckBox(
                    onChanged: (value) {},
                  ),
                  ComponentText.buildTextWidget(title: '    Male'),
                ],
              ),
              ComponentSizedBox.topMargin(size: 10),
              CustomRoundedDropDownButton(
                dropDownItem: cities,
                selectedValue: (value) {},
              ),
              ComponentSizedBox.topMargin(size: 10),
              CustomRoundedDropDownButton(
                dropDownItem: cities,
                selectedValue: (value) {},
              ),
              ComponentSizedBox.topMargin(size: 10),
              CustomRoundedDropDownButton(
                dropDownItem: cities,
                selectedValue: (value) {},
              ),
              ComponentSizedBox.topMargin(size: 10),
              FormFieldComponent.nonroundedFormField(hint: '300', width: 350),
              ComponentSizedBox.topMargin(size: 10),
              CustomRoundedDropDownButton(
                dropDownItem: cities,
                selectedValue: (value) {},
              ),
              ComponentSizedBox.topMargin(size: 20),
              Center(
                child: ComponentButton.buildTransparentButton(
                    title: 'Save',
                    height: 50,
                    width: 200,
                    texColor: Colors.white,
                    borderColor: ConstantColor.APP_COLOR,
                    btnColor: ConstantColor.APP_COLOR),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
