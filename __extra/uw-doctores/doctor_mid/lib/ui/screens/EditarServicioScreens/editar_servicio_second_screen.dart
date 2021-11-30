import 'package:doctor_mid/components/component_button.dart';
import 'package:doctor_mid/components/component_dropDown_button.dart';
import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/const_images_paths.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EditarServicioSecondScreen extends StatefulWidget {
  @override
  _EditarServicioSecondScreenState createState() =>
      _EditarServicioSecondScreenState();
}

class _EditarServicioSecondScreenState
    extends State<EditarServicioSecondScreen> {
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
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              ComponentSizedBox.topMargin(size: 20),
               ComponentText.buildTextWidget(
              title: 'All services',
              fontWeight: FontWeight.bold,
              fontSize: 18),
        
            Expanded(
              child: ListView.builder(
                itemCount: 8,
                itemBuilder: (context,index){
                return buildItemList();
              }),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildItemList() {
    return Container(
      width: MediaQuery.of(context).size.width,
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ComponentSizedBox.topMargin(size: 20),
         
            Column(
              children: [
                Row(
                  children: [
                    Image.asset(
                      ImagePath.person,
                      height: 180,
                      width: 140,
                      fit: BoxFit.contain,
                    ),
                    ComponentSizedBox.sideMargin(size: 10),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ComponentText.buildTextWidget(
                                    title: 'Dental Cleaning',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold),
                              
                                ComponentText.buildTextWidget(
                                    title: 'Details',
                                    fontWeight: FontWeight.bold,
                                    color: ConstantColor.APP_COLOR)
                              ],
                            ),
                            ComponentSizedBox.topMargin(size: 10),
                            ComponentText.buildTextWidget(
                                title:
                                    'A professional dental cleaning at \n least twice a year can improve...',
                                fontSize: 13,
                                maxLines: 2),
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
                                ComponentSizedBox.sideMargin(size: 20),
                                ComponentButton.buildTransparentButton(
                                    height: 35,
                                    width: 80,
                                    texColor: Colors.white,
                                    borderColor: ConstantColor.APP_COLOR,
                                    btnColor: ConstantColor.APP_COLOR,
                                    title: 'Add'),
                              ],
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
    );
  }
}
