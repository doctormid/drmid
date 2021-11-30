import 'package:doctor_mid/components/component_dropDown_button.dart';
import 'package:doctor_mid/components/component_form_fields.dart';
import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PacientsForthScreen extends StatefulWidget {
  @override
  _PacientsForthScreenState createState() => _PacientsForthScreenState();
}

class _PacientsForthScreenState extends State<PacientsForthScreen> {
  List<String> bloodtype = ['A+', 'B+'];
  List<String> option = ['No', 'Yes'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ConstantColor.primaryColor,
        title: Text('Profile'),
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: InkWell(
          onTap: () {
            Get.back();
          },
          child: Icon(
            Icons.chevron_left,
            color: Colors.white,
            size: 30,
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.notifications_outlined,
              )),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.message),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ComponentSizedBox.topMargin(size: 30),
              ComponentText.buildTextWidget(
                  title: 'Personal Information',
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              ComponentSizedBox.topMargin(size: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      ComponentText.buildTextWidget(
                          title: 'Nationality', color: Colors.black),
                      FormFieldComponent.nonroundedFormField(width: 150),
                    ],
                  ),
                  Column(
                    children: [
                      ComponentText.buildTextWidget(
                          title: 'Occupation', color: Colors.black),
                      FormFieldComponent.nonroundedFormField(width: 150),
                    ],
                  ),
                ],
              ),
              ComponentSizedBox.topMargin(size: 10),
              Center(child: ComponentText.buildTextWidget(title: 'Blood Type')),
              Center(
                child: CustomDropDownButton(
                  dropDownItem: bloodtype,
                  selectedValue: (value) {},
                ),
              ),
              ComponentSizedBox.topMargin(size: 10),
              ComponentText.buildTextWidget(
                  title: 'Alegies', color: Colors.black),
              FormFieldComponent.nonroundedFormField(width: 370),
              ComponentSizedBox.topMargin(size: 10),
              Divider(
                height: 20,
                thickness: 2,
              ),
              ComponentSizedBox.topMargin(size: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ComponentText.buildTextWidget(
                      title:
                          'Have you been hospitalized in the\n last two years?',
                      maxLines: 2),
                  CustomDropDownButton(
                    dropDownItem: option,
                    selectedValue: (value) {},
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ComponentText.buildTextWidget(
                      title:
                          'Have you been under medical\n care in the last two years?',
                      maxLines: 2),
                     
                  Padding(
                    padding: const EdgeInsets.only(left: 5),
                    child: Expanded(
                      child: CustomDropDownButton(
                        dropDownItem: option,
                        selectedValue: (value) {},
                      ),
                    ),
                  ),
                ],
              ),
              ComponentSizedBox.topMargin(size: 10),
              ComponentText.buildTextWidget(title: 'Why?', color: Colors.black),
              FormFieldComponent.nonroundedFormField(width: 370),
              ComponentSizedBox.topMargin(size: 10),
              ComponentText.buildTextWidget(
                  title: 'Where?', color: Colors.black),
              FormFieldComponent.nonroundedFormField(width: 370),
              Divider(
                height: 20,
                thickness: 2,
              ),
              ComponentSizedBox.topMargin(size: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ComponentText.buildTextWidget(
                      title:
                          'Are you allergic to a drug,medicine\n anesthsia and/or antibiotic?',
                      maxLines: 2),
                  CustomDropDownButton(
                    dropDownItem: option,
                    selectedValue: (value) {},
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ComponentText.buildTextWidget(
                      title: 'Have you had a hemorrhage that\n been treated?',
                      maxLines: 2),
                  CustomDropDownButton(
                    dropDownItem: option,
                    selectedValue: (value) {},
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
