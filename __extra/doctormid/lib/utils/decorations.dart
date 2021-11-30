import 'package:doctor_mid/utils/colors.dart';
import 'package:flutter/material.dart';

appCounterDecoration(color) => BoxDecoration(
      shape: BoxShape.circle,
      color: color,
    );
var appSeparationLineDecoration = BoxDecoration(
  shape: BoxShape.rectangle,
  color: Colors.grey.withOpacity(0.3),
);

var appSeparationDarkLineDecoration = BoxDecoration(
  shape: BoxShape.rectangle,
  color: Colors.grey,
);

rectangularBlueBoxDecorationWithRadiusElevation(
    double radius, double elevation) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        color: Colors.blue,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: elevation,
          ),
        ]);

rectangularRedBoxDecorationWithRadiusElevation(
    double radius, double elevation) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        color: Colors.red,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: elevation,
          ),
        ]);

rectangularWhiteBoxDecorationWithRadius(double radius) => BoxDecoration(
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.circular(radius),
    color: Colors.white);

rectangularWhiteBoxDecorationWithCurves(
        double topLeft, double bottomLeft, double bottomRight, double topRight,
        {elevation = 0.0}) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft),
            bottomLeft: Radius.circular(bottomLeft),
            bottomRight: Radius.circular(bottomRight),
            topRight: Radius.circular(topRight)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: elevation,
          ),
        ]);

rectangularOffWhiteBoxDecorationWithCurves(
    double topLeft, double bottomLeft, double bottomRight, double topRight,
    {elevation = 0.0}) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft),
            bottomLeft: Radius.circular(bottomLeft),
            bottomRight: Radius.circular(bottomRight),
            topRight: Radius.circular(topRight)),
        color: offwhite,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: elevation,
          ),
        ]);

rectangularWhiteBoxDecorationWithRadiusElevation(
        double radius, double elevation) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: elevation,
          ),
        ]);

rectangularGreenBoxDecorationWithRadiusElevation(
    double radius, double elevation) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(radius),
        color: Colors.lightGreenAccent,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: elevation,
          ),
        ]);

densedFieldDecorationWithoutPadding({hint, verticalPad=0.0, horizontalPad=0.0}) => InputDecoration(
      isDense: true,
      contentPadding: EdgeInsets.symmetric(vertical: verticalPad,horizontal: horizontalPad),
      border: InputBorder.none,
      hintText: hint,
    );

BoxDecoration borderDecoration({width = 1.0}) => BoxDecoration(
    border: Border.all(color: Colors.grey.withOpacity(0.3), width: width));

// rectangularGreyBorderDecorationWithRadius(double radius) => BoxDecoration(
//       shape: BoxShape.rectangle,
//       borderRadius: BorderRadius.all(Radius.circular(radius)),
//       border: Border.all(color: textColor),
//     );
//
rectangularAppBgColorBoxDecorationWithRadius(
  double topLeft,
  double bottomLeft,
  double bottomRight,
  double topRight,
) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft),
            bottomLeft: Radius.circular(bottomLeft),
            bottomRight: Radius.circular(bottomRight),
            topRight: Radius.circular(topRight)),
        color: appBgColor);

rectangularAppBgColorBoxDecorationWithRadiusElevation(
  double topLeft,
  double bottomLeft,
  double bottomRight,
  double topRight,
  double elevation,
) =>
    BoxDecoration(
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(topLeft),
            bottomLeft: Radius.circular(bottomLeft),
            bottomRight: Radius.circular(bottomRight),
            topRight: Radius.circular(topRight)),
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0.0, 1.0), //(x,y)
            blurRadius: elevation,
          ),
        ],
        color: appBgColor);
//
// rectangularDarkBtnColorBoxDecorationWithRadius(
//     double topLeft,
//     double bottomLeft,
//     double bottomRight,
//     double topRight,
//     ) =>
//     BoxDecoration(
//         shape: BoxShape.rectangle,
//         borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(topLeft),
//             bottomLeft: Radius.circular(bottomLeft),
//             bottomRight: Radius.circular(bottomRight),
//             topRight: Radius.circular(topRight)),
//         color: darkBtnColor);
//
// var focusFieldDecoration = BoxDecoration(
//     borderRadius: BorderRadius.circular(10.0),
//     shape: BoxShape.rectangle,
//     border: Border.all(color: appBarColor));
//
// var unFocusFieldDecoration = BoxDecoration(
//   color: bottomBarColor,
//   borderRadius: BorderRadius.circular(10.0),
//   shape: BoxShape.rectangle,
// );
