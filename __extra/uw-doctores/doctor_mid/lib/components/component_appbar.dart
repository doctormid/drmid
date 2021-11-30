
import 'package:doctor_mid/constants/constants_colors.dart';
import 'package:flutter/material.dart';

import 'component_text_widgets.dart';

class ComponentAppBar{
 static Widget buildAppBar(String title){
    return AppBar(
      backgroundColor: ConstantColor.primaryColor,
      elevation: 0.0,
      title: ComponentText.buildTextWidget(title: title,color: Colors.white,fontSize: 18.0),centerTitle: false,);

  }
}