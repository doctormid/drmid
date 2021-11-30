import 'package:doctor_mid/components/component_button.dart';
import 'package:doctor_mid/components/component_dropDown_button.dart';
import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/const_images_paths.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditarServicioFirstScreen extends StatefulWidget {
  @override
  _EditarServicioFirstScreenState createState() =>
      _EditarServicioFirstScreenState();
}

class _EditarServicioFirstScreenState extends State<EditarServicioFirstScreen> {
  List<String> num = ['1', '2'];
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
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: ListView(
          //crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ComponentSizedBox.topMargin(size: 20),
            ComponentText.buildTextWidget(
                title: 'Booking Services',
                fontWeight: FontWeight.bold,
                fontSize: 18),
            ComponentText.buildTextWidget(
                title:
                    'Cost are depend the change depending on physical \n valution',
                maxLines: 2),
          Expanded(
            child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 2,
                    itemBuilder: (BuildContext context, int index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                ImagePath.person,
                                height: 180,
                                width: 150,
                                fit: BoxFit.contain,
                              ),
                              ComponentSizedBox.sideMargin(size: 10),
                              Padding(
                                padding: const EdgeInsets.only(bottom: 5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ComponentText.buildTextWidget(
                                        title: 'Consultation',
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold),
                                    ComponentSizedBox.topMargin(size: 10),
                                    ComponentText.buildTextWidget(
                                      title: 'Consultation',
                                    ),
                                    ComponentSizedBox.topMargin(size: 10),
                                    ComponentText.buildTextWidget(
                                        title: '\$3000.00 mxn',
                                        fontWeight: FontWeight.bold),
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
                                    ComponentSizedBox.topMargin(size: 10),
                                    Row(
                                      children: [
                                        CustomDropDownButton(
                                          dropDownItem: num,
                                          selectedValue: (value) {},
                                        ),
                                        ComponentButton.buildTransparentButton(
                                            height: 35,
                                            width: 100,
                                            texColor: Colors.white,
                                            borderColor: ConstantColor.APP_COLOR,
                                            btnColor: ConstantColor.APP_COLOR,
                                            title: 'Remove'),
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      );
                    }),
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
                    ComponentText.buildTextWidget(title: 'Revision general'),
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
                    ComponentText.buildTextWidget(title: '\$2.00 MN'),
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
                    title: '\&30000 M.N',
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ],
            ),
            Divider(
              height: 20,
              thickness: 1,
            ),
            Center(
              child: ComponentButton.buildTransparentButton(
                  title: 'Confirm booking',
                  height: 50,
                  width: 220,
                  texColor: Colors.white,
                  borderColor: ConstantColor.APP_COLOR,
                  btnColor: ConstantColor.APP_COLOR),
            ),
            ComponentSizedBox.topMargin(size: 16),
          ],
        ),
      ),
    );
  }
}
