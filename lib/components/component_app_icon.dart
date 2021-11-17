import 'package:drmid/constants/const_images_paths.dart';
import 'package:drmid/constants/constants_colors.dart';
import 'package:drmid/helpers/ui_helper.dart';
import 'package:flutter/material.dart';

class ComponentAppIcon {
  static Widget buildAppIcon() {
    return Container(
      margin: EdgeInsets.only(top: 80),
      width: 140,
      height: 140,
      child: Image.asset(
        ImagePath.app_icon,
        fit: BoxFit.scaleDown,
      ),
    );
  }
}
