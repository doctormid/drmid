import 'package:drmid/widgets/widget_factory.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:drmid/helpers/app_helper.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';

Future<void> main() async {
  await AppHelper.initApp().whenComplete(
    () => runApp(Phoenix(
      child: MyApp(),
    )),
  );
  return;
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WidgetFactory.getApp(context);
  }
}
