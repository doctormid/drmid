import 'package:doctor_mid/components/component_button.dart';
import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PacientsThirdScreen extends StatefulWidget {
  @override
  _PacientsThirdScreenState createState() => _PacientsThirdScreenState();
}

class _PacientsThirdScreenState extends State<PacientsThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ConstantColor.primaryColor,
        title: Text('Historial'),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ComponentSizedBox.topMargin(size: 20),
          Center(
              child: ComponentText.buildTextWidget(
                  title: 'ALL', color: ConstantColor.APP_COLOR)),
          ComponentSizedBox.topMargin(size: 10),
          Expanded(
            child: ListView.builder(
                itemCount: 5,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    elevation: 2,
                    child: Container(
                      width: 400,
                      height: 120,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10.0, right: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ComponentSizedBox.topMargin(size: 15),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ComponentText.buildTextWidget(
                                    title: 'Alberto Ramirez Sanchez',
                                    fontWeight: FontWeight.bold,
                                    color: ConstantColor.APP_COLOR),
                                ComponentText.buildTextWidget(
                                    title: '2250 \$ M.N',
                                    fontWeight: FontWeight.bold,
                                    color: ConstantColor.APP_COLOR),
                              ],
                            ),
                            ComponentSizedBox.topMargin(size: 10),
                            ComponentText.buildTextWidget(
                                title: 'Consultation'),
                            ComponentSizedBox.topMargin(size: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ComponentButton.buildTransparentButton(
                                    title: 'Rescheduled',
                                    height: 40,
                                    width: 130,
                                    texColor: Colors.white,
                                    borderColor: ConstantColor.APP_COLOR,
                                    btnColor: ConstantColor.APP_COLOR),
                                ComponentText.buildTextWidget(
                                    title: '2021/05/13 10:00.00')
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
