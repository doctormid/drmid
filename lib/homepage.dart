import 'package:drmid/widgets/dashboard.dart';
import 'package:drmid/widgets/widget_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return WidgetFactory.getMidPage(context, const Dashboard(), 'Home');
  }
}
