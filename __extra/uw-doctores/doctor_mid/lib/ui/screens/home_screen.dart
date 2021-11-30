import 'package:flutter/material.dart';
import 'package:doctor_mid/components/component_text_widgets.dart';

class HomeScreen extends StatefulWidget {

 

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: ComponentText.buildTextWidget(title: 'Home'),),
      
    );
  }
}