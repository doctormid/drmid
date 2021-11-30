import 'package:doctor_mid/components/component_sized_box.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:doctor_mid/ui/screens/Tabs/doctors_tab.dart';
import 'package:flutter/material.dart';

class SeleccionDeMembresiaScreen extends StatefulWidget {
  @override
  _SeleccionDeMembresiaScreenState createState() =>
      _SeleccionDeMembresiaScreenState();
}

class _SeleccionDeMembresiaScreenState
    extends State<SeleccionDeMembresiaScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: PreferredSize(
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
                      isScrollable: true,
                      indicatorWeight: 3,
                      labelColor: ConstantColor.APP_COLOR,
                      labelStyle: TextStyle(fontWeight: FontWeight.bold),
                      indicatorColor: ConstantColor.APP_COLOR,
                      tabs: <Widget>[
                        Tab(
                          text: 'Doctors',
                        ),
                        Tab(
                          text: 'Clinics',
                        ),
                        Tab(
                          text: 'Clinics+',
                        ),
                        Tab(
                          text: 'Hospital',
                        ),
                        Tab(
                          text: 'Pharmacy',
                        ),
                      ]),
                ],
              ),
            ),
          ),
        ),
        body: TabBarView(children: [
          DoctorsTab(
            title: 'Doctors',
          ),
          DoctorsTab(
            title: 'Clinics',
          ),
          DoctorsTab(
            title: 'Clinics+',
          ),
          DoctorsTab(
            title: 'Hospital',
          ),
          DoctorsTab(
            title: 'Pharmacy',
          ),
        ]),
      ),
    );
  }
}
