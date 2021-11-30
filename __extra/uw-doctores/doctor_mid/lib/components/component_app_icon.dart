import 'package:doctor_mid/constants/const_images_paths.dart';
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';

class ComponentAppIcon{
 static Widget buildAppIcon(){
    return Container(
      margin: EdgeInsets.only(top: 80),
    
      width: 140,
      height: 140,
      child: Image.asset(ImagePath.app_icon,width: 40,height: 40, fit: BoxFit.scaleDown,),
    );
  }
}