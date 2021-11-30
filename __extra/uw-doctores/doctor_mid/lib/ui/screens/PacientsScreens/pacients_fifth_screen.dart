import 'package:doctor_mid/components/component_button.dart';
import 'package:doctor_mid/components/component_checkBox.dart';
import 'package:doctor_mid/components/component_dropDown_button.dart';
import 'package:doctor_mid/components/component_form_fields.dart';
import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';

class PacientsFifthScreen extends StatefulWidget {
  @override
  _PacientsFifthScreenState createState() => _PacientsFifthScreenState();
}

class _PacientsFifthScreenState extends State<PacientsFifthScreen> {
  List<String> option = ['yes', 'no'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0.0,
        backgroundColor: ConstantColor.primaryColor,
        title: Text('Profile'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ComponentSizedBox.topMargin(size: 20),
              ComponentText.buildTextWidget(
                  title: '-if you have any of these disease mark it:',
                  color: Colors.black),
              ComponentSizedBox.topMargin(size: 10),
              buildDiseaseContainer(
                  title: 'Tubercuiosis', onchanged: (value) {}),
              ComponentSizedBox.topMargin(size: 5),
              buildDiseaseContainer(
                  title: 'PeaceMakers', onchanged: (value) {}),
              ComponentSizedBox.topMargin(size: 5),
              buildDiseaseContainer(title: 'Diabetes', onchanged: (value) {}),
              ComponentSizedBox.topMargin(size: 5),
              buildDiseaseContainer(title: 'Fever', onchanged: (value) {}),
              ComponentSizedBox.topMargin(size: 5),
              buildDiseaseContainer(title: 'Anemia', onchanged: (value) {}),
              ComponentSizedBox.topMargin(size: 5),
              buildDiseaseContainer(title: 'Arthritis', onchanged: (value) {}),
              ComponentSizedBox.topMargin(size: 5),
              buildDiseaseContainer(title: 'Rheumatic', onchanged: (value) {}),
              ComponentSizedBox.topMargin(size: 5),
              buildDiseaseContainer(title: 'Cardiac', onchanged: (value) {}),
              ComponentSizedBox.topMargin(size: 5),
              buildDiseaseContainer(title: 'Psychic', onchanged: (value) {}),
              ComponentSizedBox.topMargin(size: 5),
              buildDiseaseContainer(title: 'Treatment', onchanged: (value) {}),
              ComponentSizedBox.topMargin(size: 5),
              buildDiseaseContainer(title: 'Hepatitas', onchanged: (value) {}),
              ComponentSizedBox.topMargin(size: 5),
              buildDiseaseContainer(
                  title: 'Hypertension', onchanged: (value) {}),
              ComponentSizedBox.topMargin(size: 5),
              buildDiseaseContainer(title: 'Stroke', onchanged: (value) {}),
              ComponentSizedBox.topMargin(size: 5),
              buildDiseaseContainer(
                  title: 'Wieght Loss', onchanged: (value) {}),
              ComponentSizedBox.topMargin(size: 5),
              buildDiseaseContainer(
                  title: 'Vascular Accident', onchanged: (value) {}),
              ComponentSizedBox.topMargin(size: 5),
              buildDiseaseContainer(title: 'Epilepsy', onchanged: (value) {}),
              ComponentSizedBox.topMargin(size: 5),
              buildDiseaseContainer(
                  title: 'PeaceMakers', onchanged: (value) {}),
              ComponentSizedBox.topMargin(size: 5),
              buildDiseaseContainer(title: 'Injury', onchanged: (value) {}),
              ComponentSizedBox.topMargin(size: 5),
              buildDiseaseContainer(title: 'Cancer', onchanged: (value) {}),
              ComponentSizedBox.topMargin(size: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ComponentText.buildTextWidget(
                      title: 'Are you currently taking any\nmedications?',
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
                      title: 'Are you pregnant', maxLines: 2),
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
              ComponentSizedBox.topMargin(size: 20),
              ComponentText.buildTextWidget(title: 'Last dental Practice'),
              Center(child: ComponentText.buildTextWidget(title: '2020-03-10')),
              ComponentSizedBox.topMargin(size: 20),
              ComponentText.buildTextWidget(
                title: 'In case of emergency call?',
              ),
              FormFieldComponent.nonroundedFormField(width: 370),
              ComponentSizedBox.topMargin(size: 10),
              ComponentText.buildTextWidget(
                title: '- Name?',
              ),
              FormFieldComponent.nonroundedFormField(width: 370),
              ComponentSizedBox.topMargin(size: 10),
              ComponentText.buildTextWidget(
                title: 'RelationShip?',
              ),
              FormFieldComponent.nonroundedFormField(width: 370),
              ComponentSizedBox.topMargin(size: 20),
              Center(
                child: ComponentButton.buildTransparentButton(
                  title: 'Save',
                  btnColor: ConstantColor.APP_COLOR,
                  borderColor: ConstantColor.APP_COLOR,
                  texColor: Colors.white,
                  width: 350,
                  radius: 20,
                ),
              ),
              ComponentSizedBox.topMargin(size: 20),
            ],
          ),
        ),
      ),
    );
  }

  Container buildDiseaseContainer({String title, Function onchanged(value)}) {
    return Container(
      height: 35,
      width: 380,
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Padding(
        padding: const EdgeInsets.only(left: 8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //ComponentSizedBox.sideMargin(size: 10),
            ComponentText.buildTextWidget(title: title),
            CustomCheckBox(
              onChanged: onchanged,
            )
          ],
        ),
      ),
    );
  }
}
