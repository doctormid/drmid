import 'package:doctor_mid/components/component_button.dart';
import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class InfomacionDeLaCitaFirstScreen extends StatefulWidget {
  @override
  _InfomacionDeLaCitaFirstScreenState createState() =>
      _InfomacionDeLaCitaFirstScreenState();
}

class _InfomacionDeLaCitaFirstScreenState
    extends State<InfomacionDeLaCitaFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         elevation: 0.0,
        backgroundColor: ConstantColor.primaryColor,
        title: Text('Appointment Details'),
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
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ComponentSizedBox.topMargin(size: 20),
                Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.chat,
                    size: 40,
                    color: ConstantColor.APP_COLOR,
                  ),
                ),
                //ComponentSizedBox.topMargin(size: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD-l889V8_Nv64SYZECELEBUzvWgmgxdlAow&usqp=CAU',
                        height: 100,
                        width: 100,
                        fit: BoxFit.contain,
                      ),
                    ),
                    ComponentSizedBox.sideMargin(size: 100),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ComponentText.buildTextWidget(
                              title: 'Alberto', fontSize: 16),
                          ComponentText.buildTextWidget(
                              title: 'location not available', fontSize: 16),
                          ComponentSizedBox.topMargin(size: 20),
                          Row(
                            children: [
                              ComponentText.buildTextWidget(
                                  title: '2021/04/28  ',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                              ComponentText.buildTextWidget(
                                  title: '08:00:00',
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
                ComponentSizedBox.topMargin(size: 30),

                ComponentButton.buildTransparentButton(
                    title: 'Cancel',
                    height: 50,
                    width: 140,
                    texColor: Colors.white,
                    borderColor: Colors.redAccent,
                    btnColor: Colors.redAccent),
                ComponentSizedBox.topMargin(size: 10),
                Divider(
                  height: 20,
                  thickness: 1,
                ),
                ComponentText.buildTextWidget(
                    title: 'Price Details',
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
                Divider(
                  height: 20,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ComponentText.buildTextWidget(
                            title: 'Quantity', fontWeight: FontWeight.bold),
                        ComponentSizedBox.topMargin(size: 5),
                        ComponentText.buildTextWidget(title: '1'),
                        ComponentSizedBox.topMargin(size: 5),
                        ComponentText.buildTextWidget(title: '1'),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ComponentText.buildTextWidget(
                            title: 'Service', fontWeight: FontWeight.bold),
                        ComponentSizedBox.topMargin(size: 5),
                        ComponentText.buildTextWidget(title: 'Consultation'),
                        ComponentSizedBox.topMargin(size: 5),
                        ComponentText.buildTextWidget(title: 'Limpieza'),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ComponentText.buildTextWidget(
                            title: 'Cost', fontWeight: FontWeight.bold),
                        ComponentSizedBox.topMargin(size: 5),
                        ComponentText.buildTextWidget(title: '\$3000 MN'),
                        ComponentSizedBox.topMargin(size: 5),
                        ComponentText.buildTextWidget(title: '\$500 MN'),
                      ],
                    ),
                  ],
                ),
                Divider(
                  height: 20,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ComponentText.buildTextWidget(title: 'Total Servive'),
                    ComponentText.buildTextWidget(title: '\$3500 M.N'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ComponentText.buildTextWidget(title: 'Discount'),
                    ComponentSizedBox.sideMargin(size: 70),
                    ComponentText.buildTextWidget(title: '-0%'),
                    ComponentText.buildTextWidget(title: '-0\$ 0.00 M.N'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ComponentText.buildTextWidget(title: 'Coupon Discount'),
                    ComponentText.buildTextWidget(title: '-0\$ 0.0 M.N'),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ComponentText.buildTextWidget(title: 'Advance'),
                    ComponentText.buildTextWidget(title: '-\&2600 M.N'),
                  ],
                ),
                Divider(
                  height: 20,
                  thickness: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ComponentText.buildTextWidget(
                        title: 'Pending payment',
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                    ComponentText.buildTextWidget(
                        title: '-\&2600 M.N',
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ],
                ),
                Divider(
                  height: 20,
                  thickness: 1,
                ),
                ComponentText.buildTextWidget(
                    title: 'Aditional informaction',
                    fontWeight: FontWeight.bold,
                    color: Colors.black),

                ComponentSizedBox.topMargin(size: 30),
                Center(
                  child: ComponentButton.buildTransparentButton(
                      title: 'Start Appointment',
                      height: 50,
                      width: 220,
                      texColor: Colors.white,
                      borderColor: ConstantColor.APP_COLOR,
                      btnColor: ConstantColor.APP_COLOR),
                ),
                ComponentSizedBox.topMargin(size: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
