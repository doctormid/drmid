import 'package:doctor_mid/components/component_dropDown_button.dart';
import 'package:doctor_mid/components/component_form_fields.dart';
import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';

class ConfiguracionScreen extends StatefulWidget {
  @override
  _ConfiguracionScreenState createState() => _ConfiguracionScreenState();
}

class _ConfiguracionScreenState extends State<ConfiguracionScreen> {
  List<String> language = ['English', 'Roman', 'Chineses'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ConstantColor.primaryColor,
        title: Text('Setting'),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 15.0, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ComponentSizedBox.topMargin(size: 20),
              Row(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD-l889V8_Nv64SYZECELEBUzvWgmgxdlAow&usqp=CAU'),
                  ),
                  ComponentSizedBox.sideMargin(size: 20),
                  ComponentText.buildTextWidget(
                    title: 'Dr Manuel Macias',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ],
              ),
              Divider(
                height: 20,
                thickness: 1,
                color: Colors.black,
              ),
              ComponentText.buildTextWidget(
                  title: 'Profile Compeleted', fontWeight: FontWeight.bold),
              ComponentSizedBox.topMargin(size: 10),
              Row(
                children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 30,
                      color: ConstantColor.APP_COLOR,
                    ),
                  ),
                  ComponentSizedBox.sideMargin(size: 5),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 30,
                      color: ConstantColor.APP_COLOR,
                    ),
                  ),
                  ComponentSizedBox.sideMargin(size: 5),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 30,
                      color: ConstantColor.APP_COLOR,
                    ),
                  ),
                  ComponentSizedBox.sideMargin(size: 5),
                  Flexible(
                    flex: 1,
                    child: Container(
                      height: 30,
                      color: ConstantColor.APP_COLOR,
                    ),
                  ),
                ],
              ),
              Divider(
                height: 10,
                thickness: 1,
                color: Colors.black,
              ),
              ComponentSizedBox.topMargin(size: 10),
              ComponentText.buildTextWidget(
                  title: 'Accont settings', fontWeight: FontWeight.bold),
              ComponentSizedBox.topMargin(size: 10),
              buildprofileinformationColumn(
                  icon: Icons.person_outlined, title: 'Personal Information'),
              ComponentSizedBox.topMargin(size: 5),
              buildprofileinformationColumn(
                  icon: Icons.payment_outlined,
                  title: 'payments and collections'),
              ComponentSizedBox.topMargin(size: 5),
              buildprofileinformationColumn(
                  icon: Icons.sms_outlined, title: 'Notifications'),
              ComponentSizedBox.topMargin(size: 5),
              buildprofileinformationColumn(
                  icon: Icons.medical_services_outlined,
                  title: 'Medical History'),
              ComponentSizedBox.topMargin(size: 5),
              buildprofileinformationColumn(
                  icon: Icons.person_add_outlined, title: 'Invite a friend '),
              ComponentSizedBox.topMargin(size: 5),
              Row(
                children: [
                  Icon(Icons.language_outlined),
                  ComponentSizedBox.sideMargin(size: 10),
                  CustomDropDownButton(
                    dropDownItem: language,
                    selectedValue: (value) {},
                  ),
                ],
              ),
              Divider(
                height: 10,
                thickness: 1,
                color: Colors.black,
              ),
              ComponentSizedBox.topMargin(size: 10),
              ComponentText.buildTextWidget(
                  title: 'Assistance', fontWeight: FontWeight.bold),
              Divider(
                height: 20,
                thickness: 1,
                color: Colors.black,
              ),
              ComponentSizedBox.topMargin(size: 10),
              ComponentText.buildTextWidget(
                title: 'Send us your comments',
              ),
              Divider(
                height: 20,
                thickness: 1,
                color: Colors.black,
              ),
              ComponentSizedBox.topMargin(size: 10),
              ComponentText.buildTextWidget(
                title: 'Privacy Policy',
              ),
              Divider(
                height: 20,
                thickness: 1,
                color: Colors.black,
              ),
              ComponentSizedBox.topMargin(size: 10),
              ComponentText.buildTextWidget(title: 'Legal'),
              ComponentText.buildTextWidget(title: 'Terms of use'),
              Divider(
                height: 20,
                thickness: 1,
                color: Colors.black,
              ),
              ComponentSizedBox.topMargin(size: 10),
              buildprofileinformationColumn(
                  icon: Icons.logout, title: 'Logout'),
              ComponentSizedBox.topMargin(size: 10),
              Center(
                  child: ComponentText.buildTextWidget(
                      title: 'Version 1.1 (2104220)'))
            ],
          ),
        ),
      ),
    );
  }

  Column buildprofileinformationColumn({IconData icon, String title}) {
    return Column(
      children: [
        Row(
          children: [
            Icon(icon),
            ComponentSizedBox.sideMargin(size: 10),
            Expanded(
                child: FormFieldComponent.buildPhoneformFieldWithoutIcon(
                    hint: title))
          ],
        ),
      ],
    );
  }
}
