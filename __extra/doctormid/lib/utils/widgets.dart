import 'package:cached_network_image/cached_network_image.dart';
import 'package:doctor_mid/utils/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';
import 'decorations.dart';

class MyScaffold extends StatelessWidget {
  final Widget? body, drawer, bottomNavigationBar;
  Color? color;
  final PreferredSizeWidget? appBar;
  bool extendBody;

  MyScaffold({
    Key? key,
    this.body,
    this.drawer,
    this.appBar,
    this.bottomNavigationBar,
    this.color,
    this.extendBody = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: color ?? appBgColor,
      extendBody: extendBody,
      appBar: appBar,
      body: body,
      bottomNavigationBar: bottomNavigationBar,
      drawer: drawer,
    );
  }
}

class CircularAvatar extends StatelessWidget {
  final String imagePath;
  final double imageSize;

  const CircularAvatar(
      {Key? key, required this.imagePath, required this.imageSize})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: imageSize,
      height: imageSize,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(imageSize),
        child: GenericCachedNetworkImage(
          imagePath: imagePath,
        ),
      ),
    );
  }
}

class GenericCachedNetworkImage extends StatelessWidget {
  final String imagePath;

  const GenericCachedNetworkImage({Key? key, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imagePath,
      placeholder: (_, url) => PlaceholderWidget(),
      errorWidget: (_, url, error) => PlaceholderWidget(),
      fit: BoxFit.cover,
    );
  }
}

class PlaceholderWidget extends StatelessWidget {
  const PlaceholderWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/ic_placeholder.png',
      fit: BoxFit.cover,
    );
  }
}

class MyTextField extends StatelessWidget {
  bool obscureText;
  TextInputType keyboardType;
  String? hint;
  double verticalPad, horizontalPad;

  MyTextField({
    Key? key,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.hint,
    this.verticalPad = 0.0,
    this.horizontalPad = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextField(
        decoration: densedFieldDecorationWithoutPadding(
            hint: hint, verticalPad: verticalPad, horizontalPad: horizontalPad),
        keyboardType: keyboardType,
        obscureText: obscureText,
      ),
    );
  }
}

class CustomizedButton extends StatelessWidget {
  final String text;
  final double verticalPadding;
  final Color textColor;
  bool needIcon;
  TextStyle? style;

  CustomizedButton({
    Key? key,
    required this.text,
    required this.verticalPadding,
    required this.textColor,
    this.style,
    this.needIcon = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: verticalPadding),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            needIcon?Row(
              children: [
                Image.asset(
                  'assets/images/ic_lock.png',
                  color: textColor,
                  height: 16,
                ),
                SizedBox(width: 5,)
              ],
            ):Container(),
            Text(
              text,
              style: style ?? boldWhiteText14(textColor),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomizedTouchEventIconButton extends StatelessWidget {
  final String path;
  final double width;
  final double height;
  final VoidCallback callback;
  double horizontalPad, verticalPad;
  var color;

  CustomizedTouchEventIconButton({
    Key? key,
    required this.path,
    required this.width,
    required this.height,
    this.color = null,
    required this.callback,
    this.horizontalPad = 0.0,
    this.verticalPad = 0.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPad, vertical: verticalPad),
      minSize: double.minPositive,
      child: Image.asset(
        path,
        width: width,
        height: height,
        color: color,
      ),
      onPressed: callback,
    );
  }
}

class CheckboxContent extends StatelessWidget {
  final bool value;
  final String content;
  final Function(bool?)? onCheckChanged;

  const CheckboxContent({
    Key? key,
    required this.value,
    required this.content,
    this.onCheckChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: value,
          onChanged: onCheckChanged,
        ),
        Text(
          content,
          style: regularWhiteText14(Colors.grey),
        )
      ],
    );
  }
}

class DropDownField extends StatelessWidget {
  final String text;

  const DropDownField({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: regularWhiteText14(Colors.grey),
          ),
          Icon(Icons.arrow_drop_down_sharp)
        ],
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String itemName;

  const MenuItem({
    Key? key,
    required this.itemName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            itemName,
            style: boldWhiteText14(Colors.black),
          ),
          Icon(
            Icons.arrow_forward_ios,
            size: 16,
          )
        ],
      ),
    );
  }
}

class AppBottomBar extends StatelessWidget {
  const AppBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          rectangularWhiteBoxDecorationWithCurves(20, 0, 0, 20, elevation: 4.0),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16),
        child: Row(
          children: List.generate(
            5,
            (index) => Expanded(
              child: Container(
                child: Image.asset(
                  'assets/images/ic_search.png',
                  height: 24,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
