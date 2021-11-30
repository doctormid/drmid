import 'package:doctor_mid/components/component_button.dart';
import 'package:doctor_mid/components/component_dropDown_button.dart';
import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';

class DoctorsTab extends StatefulWidget {
  String title;
  DoctorsTab({this.title});
  @override
  _DoctorsTabState createState() => _DoctorsTabState();
}

class _DoctorsTabState extends State<DoctorsTab> {
  List<String> _months = ['1 Month', '2 Month'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 5),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ComponentSizedBox.topMargin(size: 20),
              Center(
                child: ComponentText.buildTextWidget(
                    title: widget.title,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              ComponentSizedBox.topMargin(size: 20),
              Padding(
                padding: const EdgeInsets.only(left: 60.0, right: 50),
                child: ComponentText.buildTextWidget(
                    title:
                        'if you are a doctor this is the ideal plan for you.Make more patient find you',
                    maxLines: 3,
                    fontSize: 20,
                    color: Colors.grey),
              ),
              ComponentSizedBox.topMargin(size: 20),
              Center(
                child: ComponentText.buildTextWidget(
                    title: '\$ 20 per',
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              ComponentSizedBox.topMargin(size: 10),
              Center(
                child: CustomDropDownButton(
                  dropDownItem: _months,
                  selectedValue: (value) {},
                ),
              ),
              ComponentSizedBox.topMargin(size: 10),
              Divider(
                height: 20,
                thickness: 1,
                indent: 20,
                endIndent: 20,
                color: Colors.black,
              ),
              ComponentSizedBox.topMargin(size: 20),
              buildDoctorPlanRow(title: 'Mobile App'),
              ComponentSizedBox.topMargin(size: 20),
              buildDoctorPlanRow(title: 'Online Payments'),
              ComponentSizedBox.topMargin(size: 20),
              buildDoctorPlanRow(title: 'Prescription'),
              ComponentSizedBox.topMargin(size: 20),
              buildDoctorPlanRow(title: 'Medical History'),
              ComponentSizedBox.topMargin(size: 20),
              buildDoctorPlanRow(title: 'Finance Module(1)'),
              ComponentSizedBox.topMargin(size: 20),
              buildDoctorPlanRow(title: 'Doctor Module(1)'),
              ComponentSizedBox.topMargin(size: 20),
              buildDoctorPlanRow(title: 'Medical Directory MiD'),
              ComponentSizedBox.topMargin(size: 20),
              buildDoctorPlanRow(title: 'Administrator Account'),
              ComponentSizedBox.topMargin(size: 30),
              Center(
                child: ComponentButton.buildTransparentButton(
                    height: 40,
                    width: 220,
                    btnColor: ConstantColor.APP_COLOR,
                    borderColor: ConstantColor.APP_COLOR,
                    texColor: Colors.white,
                    fontsize: 20,
                    title: "Select"),
              ),
              ComponentSizedBox.topMargin(size: 30),
            ],
          ),
        ),
      ),
    );
  }

  Row buildDoctorPlanRow({String title}) {
    return Row(
      children: [
        Icon(
          Icons.check_circle_outline,
          color: ConstantColor.APP_COLOR,
        ),
        ComponentSizedBox.sideMargin(size: 10),
        ComponentText.buildTextWidget(title: title, fontSize: 16),
      ],
    );
  }
}
