import 'package:doctor_mid/components/component_button.dart';
import 'package:doctor_mid/components/component_dropDown_button.dart';
import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/const_images_paths.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditarServicioThirdScreen extends StatefulWidget {
  @override
  _EditarServicioThirdScreenState createState() =>
      _EditarServicioThirdScreenState();
}

class _EditarServicioThirdScreenState extends State<EditarServicioThirdScreen> {
  List<String> num = ['1', '2'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ConstantColor.primaryColor,
        title: Text('Service'),
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
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ComponentSizedBox.topMargin(size: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ComponentText.buildTextWidget(
                      title: 'Revision general ', fontWeight: FontWeight.bold),
                  CustomDropDownButton(
                    dropDownItem: num,
                    selectedValue: (value) {},
                  ),
                  Column(
                    children: [
                      ComponentText.buildTextWidget(
                          title: '\$2.00MN', fontWeight: FontWeight.bold),
                      Row(
                        children: [
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                            size: 20,
                          ),
                          Icon(
                            Icons.star_border_outlined,
                            color: Colors.yellow,
                            size: 20,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              ComponentSizedBox.topMargin(size: 20),
              Row(
                children: [
                  Image.asset(
                    ImagePath.person,
                    height: 180,
                    width: 150,
                    fit: BoxFit.contain,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 90.0),
                    child: Column(
                      children: [
                        ComponentText.buildTextWidget(title: 'Description'),
                        ComponentSizedBox.topMargin(size: 10),
                        ComponentText.buildTextWidget(
                            title: 'Revision del oido')
                      ],
                    ),
                  )
                ],
              ),
              ComponentSizedBox.topMargin(size: 10),
              Container(
                height: 100,
                width: 400,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ComponentSizedBox.topMargin(size: 20),
                    ComponentText.buildTextWidget(
                        title: 'Additional Information'),
                    ComponentSizedBox.topMargin(size: 20),
                    ComponentText.buildTextWidget(
                        title: 'poir tooth brushing is suggested'),
                  ],
                ),
              ),
              ComponentSizedBox.topMargin(size: 10),
              ComponentText.buildTextWidget(title: 'pateint Review'),
              ComponentSizedBox.topMargin(size: 10),
              Row(
                children: [
                  Container(
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  ComponentSizedBox.sideMargin(size: 10),
                  Column(
                    children: [
                      ComponentText.buildTextWidget(
                          title: 'Karen Smith', fontWeight: FontWeight.bold),
                      ComponentSizedBox.topMargin(size: 5),
                      ComponentText.buildTextWidget(title: 'June,20,2021'),
                    ],
                  ),
                  ComponentSizedBox.sideMargin(size: 80),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 30.0),
                    child: Row(
                      children: [
                        Icon(
                          Icons.star_border_outlined,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          color: Colors.yellow,
                          size: 20,
                        ),
                        Icon(
                          Icons.star_border_outlined,
                          color: Colors.yellow,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              ComponentSizedBox.topMargin(size: 5),
              ComponentText.buildTextWidget(
                  title: 'A very professional Service'),
              ComponentSizedBox.topMargin(size: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ComponentText.buildTextWidget(
                      title: 'Previous',
                      fontWeight: FontWeight.bold,
                      color: ConstantColor.APP_COLOR),
                  ComponentText.buildTextWidget(
                      title: 'Upcoming',
                      fontWeight: FontWeight.bold,
                      color: ConstantColor.APP_COLOR),
                ],
              ),
              ComponentSizedBox.topMargin(size: 20),
              Center(
                child: ComponentButton.buildTransparentButton(
                  height: 50,
                  width: 300,
                  btnColor: ConstantColor.APP_COLOR,
                  borderColor: ConstantColor.APP_COLOR,
                  texColor: Colors.white,
                  title: 'Add',
                  radius: 20,
                ),
              ),
              ComponentSizedBox.topMargin(size: 30),
            ],
          ),
        ),
      ),
    );
  }
}
