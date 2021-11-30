import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';

class NotificationsScreen extends StatefulWidget {
  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifications'),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ComponentSizedBox.topMargin(size: 10),
            Center(
              child: ComponentText.buildTextWidget(
                  title: 'Mark all notifications as read',
                  color: ConstantColor.APP_COLOR,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            ComponentSizedBox.topMargin(size: 10),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      ComponentSizedBox.sideMargin(size: 10),
                      Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          color: index%2==1?Colors.red: ConstantColor.APP_COLOR,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 4.0),
                            child: ComponentText.buildTextWidget(
                                title: 'MEM-PACO',
                                maxLines: 2,
                                color: Colors.white,
                                fontSize: 16),
                          ),
                        ),
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  ComponentText.buildTextWidget(
                                      title: 'Payed',
                                      fontWeight: FontWeight.bold),
                                  //ComponentSizedBox.sideMargin(size: 140),
                                  ComponentText.buildTextWidget(
                                      title: '1 months ago')
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
                                  color: ConstantColor.APP_COLOR,
                                ),
                              ),
                            ),
                            ComponentText.buildTextWidget(
                                title:
                                    'Su pago ha sido procesado,Mucahas gracias porso pago',
                                maxLines: 2)
                          ],
                        ),
                      ),
                    ],
                  );
                },
                itemCount: 5,
                shrinkWrap: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
