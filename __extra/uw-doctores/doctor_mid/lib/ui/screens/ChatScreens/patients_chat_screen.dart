import 'package:doctor_mid/components/component_appbar.dart';
import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';

class PatientsChatScreen extends StatefulWidget {
  @override
  _PatientsChatScreenState createState() => _PatientsChatScreenState();
}

class _PatientsChatScreenState extends State<PatientsChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: ComponentAppBar.buildAppBar('Patients'),
      body: Column(
        children: [
          Expanded(
            child: Container(
              width: 500,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Column(
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ComponentSizedBox.topMargin(size: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Icon(
                          Icons.search,
                          color: ConstantColor.APP_COLOR,
                          size: 40,
                        ),
                        Icon(
                          Icons.person_add_alt_1_outlined,
                          size: 40,
                          color: ConstantColor.APP_COLOR,
                        )
                      ],
                    ),
                    Divider(
                      height: 25,
                      thickness: 1,
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: 10,
                        itemBuilder: (context, index) {
                          return buildItem();
                        },
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Row buildItem() {
    return Row(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: NetworkImage(
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSD-l889V8_Nv64SYZECELEBUzvWgmgxdlAow&usqp=CAU'),
        ),
        ComponentSizedBox.sideMargin(size: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ComponentSizedBox.topMargin(size: 25),
              Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ComponentText.buildTextWidget(
                        title: 'Garardo Alvarado',
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                    //ComponentSizedBox.sideMargin(size: 140),
                    ComponentText.buildTextWidget(title: '14.04.21')
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 25.0),
                child: Align(
                  alignment: Alignment.topRight,
                  child: Icon(
                    Icons.done_outlined,
                    size: 30,
                  ),
                ),
              ),
              ComponentText.buildTextWidget(
                title: 'Hola, buen...',
              ),
              Divider(
                height: 20,
                thickness: 1,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
