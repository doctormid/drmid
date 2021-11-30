import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:doctor_mid/ui/screens/PagosScreens/total_tab.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PagosYCobrosScreen extends StatefulWidget {
  @override
  _PagosYCobrosScreenState createState() => _PagosYCobrosScreenState();
}

class _PagosYCobrosScreenState extends State<PagosYCobrosScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: ConstantColor.primaryColor,
          title: ComponentText.buildTextWidget(title: 'payments and collections',color: Colors.white),
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
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(70),
            child: new Container(
              color: Colors.white,
              child: new SafeArea(
                child: Column(
                  children: <Widget>[
                    ComponentSizedBox.topMargin(size: 20),
                    TabBar(
                        unselectedLabelColor: Colors.grey,
                        unselectedLabelStyle:
                            TextStyle(fontWeight: FontWeight.normal),
                        //isScrollable: true,
                        indicatorWeight: 2,
                        labelColor: ConstantColor.APP_COLOR,
                        labelStyle: TextStyle(fontWeight: FontWeight.bold),
                        indicatorColor: ConstantColor.APP_COLOR,
                        tabs: <Widget>[
                          Tab(
                            text: 'TOTAL',
                          ),
                          Tab(
                            text: 'INCOMES',
                          ),
                          Tab(
                            text: 'PAYMENTS',
                          ),
                        ]),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: TabBarView(
            children: [TotalTabScreen(), TotalTabScreen(), TotalTabScreen()]),
      ),
    );
  }
}
