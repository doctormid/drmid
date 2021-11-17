import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class UiHelper {
  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double widthOrDefault(BuildContext context, {double? width}) {
    width = width ?? screenWidth(context);
    return width < minWidth ? minWidth : width;
  }

  static Text header(String txt, BuildContext context) {
    return Text(txt, style: Theme.of(context).textTheme.headline6);
  }

  static const minWidth = 520.0;
  static const Color primary = Colors.teal; //Color.fromARGB(61, 0, 156, 130);
  static const Color primaryVariant = Colors.tealAccent; //Color.fromARGB(41, 0, 105, 87);
  static const Color secondary = Color.fromARGB(91, 70, 232, 205);
  static const Color secondaryVariant = Color.fromARGB(68, 52, 172, 152);
  static const Color background = Colors.white;
  static const Color surface = Colors.white;
  static const Color error = Colors.red;
  static const Color onPrimary = Colors.white;
  static const Color onSecondary = Colors.black;
  static const Color onBackground = Colors.black;
  static const Color onSurface = Colors.black;
  static const Color onError = Colors.white;
}
