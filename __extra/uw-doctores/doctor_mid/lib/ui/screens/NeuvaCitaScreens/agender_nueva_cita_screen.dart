import 'package:doctor_mid/components/component_button.dart';
import 'package:doctor_mid/components/component_dropDown_button.dart';
import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sweetalert/sweetalert.dart';

class AgendarNuevaCita extends StatefulWidget {
  @override
  _AgendarNuevaCitaState createState() => _AgendarNuevaCitaState();
}

class _AgendarNuevaCitaState extends State<AgendarNuevaCita> {
  List<String> puntuality = ['Good', 'Excelent', 'Fair', 'Bad'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ConstantColor.primaryColor,
        title: ComponentText.buildTextWidget(title: 'Appointment Details',color: Colors.white),
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
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ComponentSizedBox.topMargin(size: 40),
              Row(
                children: [
                  ComponentSizedBox.sideMargin(size: 0),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD-l889V8_Nv64SYZECELEBUzvWgmgxdlAow&usqp=CAU',
                      height: 100,
                      width: 100,
                      fit: BoxFit.contain,
                    ),
                  ),
                  ComponentSizedBox.sideMargin(size: 20),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 35,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                   size: 35,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                     size: 35,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 35,
                  ),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                     size: 35,
                  ),
                ],
              ),
              ComponentSizedBox.topMargin(size: 20),
              ComponentText.buildTextWidget(
                  title: 'Evalute the following Aspects',
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
              ComponentSizedBox.topMargin(size: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //ComponentSizedBox.sideMargin(size: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ComponentText.buildTextWidget(title: 'Puntuality'),
                        ComponentSizedBox.topMargin(size: 10),
                        CustomDropDownButton(
                          dropDownItem: puntuality,
                          selectedValue: (value) {},
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ComponentText.buildTextWidget(title: 'Attention'),
                        ComponentSizedBox.topMargin(size: 10),
                        CustomDropDownButton(
                          dropDownItem: puntuality,
                          selectedValue: (value) {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ComponentSizedBox.topMargin(size: 20),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //ComponentSizedBox.sideMargin(size: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ComponentText.buildTextWidget(title: 'Hygiene'),
                        ComponentSizedBox.topMargin(size: 10),
                        CustomDropDownButton(
                          dropDownItem: puntuality,
                          selectedValue: (value) {},
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ComponentText.buildTextWidget(title: 'Cooperative'),
                        ComponentSizedBox.topMargin(size: 10),
                        CustomDropDownButton(
                          dropDownItem: puntuality,
                          selectedValue: (value) {},
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              ComponentSizedBox.topMargin(size: 20),
              ComponentText.buildTextWidget(
                  title: 'Write Your Review', fontWeight: FontWeight.bold),
              ComponentSizedBox.topMargin(size: 10),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Container(
                  height: 100,
                  width: 380,
                  decoration: BoxDecoration(
                      color: Color(0xffF3F3F4),
                      borderRadius: BorderRadius.circular(10)),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ),
              ComponentSizedBox.topMargin(size: 20),
              Center(
                child: ComponentButton.buildTransparentButton(
                    title: 'Submit Review',
                    height: 50,
                    width: 200,
                    texColor: Colors.white,
                    borderColor: ConstantColor.APP_COLOR,
                    btnColor: ConstantColor.APP_COLOR,
                    onPressed: () {
                      SweetAlert.show(context,
                          title: "Do you want to create a new",
                          subtitle: "Appointment?",
                          style: SweetAlertStyle.confirm,
                          showCancelButton: true, onPress: (bool isConfirm) {
                        if (isConfirm) {
                          SweetAlert.show(context,
                              style: SweetAlertStyle.confirm, title: "Success");
                          // return false to keep dialog
                          return false;
                        }
                      });
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
