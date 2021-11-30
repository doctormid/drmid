import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/const_images_paths.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PacientsFirstScreen extends StatefulWidget {
  @override
  _PacientsFirstScreenState createState() => _PacientsFirstScreenState();
}

class _PacientsFirstScreenState extends State<PacientsFirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: ConstantColor.primaryColor,
        title: Text('Patients'),
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
        child: Column(
          children: [
            ComponentSizedBox.topMargin(size: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(32),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(fontSize: 17),
                  hintText: 'Search ',
                  suffixIcon: Icon(
                    Icons.search,
                    color: ConstantColor.APP_COLOR,
                    size: 30,
                  ),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(20),
                ),
              ),
            ),
            Divider(
              height: 20,
              thickness: 1,
              indent: 20,
            ),
            ComponentSizedBox.topMargin(size: 20),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD-l889V8_Nv64SYZECELEBUzvWgmgxdlAow&usqp=CAU'),
                    ),
                    ComponentText.buildTextWidget(
                      title: 'Alberto Ramirez Sanchez',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    Icon(
                      Icons.message_outlined,
                      color: ConstantColor.APP_COLOR,
                    ),
                    Icon(
                      Icons.person,
                      color: ConstantColor.APP_COLOR,
                    )
                  ],
                ),
                Divider(
                  height: 20,
                  thickness: 1,
                  indent: 20,
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(ImagePath.person),
                    ),
                    ComponentText.buildTextWidget(
                      title: 'Ignacio Rivera',
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                    ComponentSizedBox.sideMargin(size: 45),
                    Icon(
                      Icons.message_outlined,
                      color: ConstantColor.APP_COLOR,
                    ),
                    Icon(
                      Icons.person,
                      color: ConstantColor.APP_COLOR,
                    )
                  ],
                ),
                Divider(
                  height: 20,
                  thickness: 1,
                  indent: 20,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
