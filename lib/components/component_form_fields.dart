import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:drmid/config/validations.dart';
import 'package:drmid/constants/constants_colors.dart';
import 'package:drmid/utils/size_config.dart';

class FormFieldComponent {
  static Widget formField({
    String? hint,
    IconData? iconField,
    IconData? suffixIcon,
    dynamic onChange,
    dynamic validator,
    dynamic onSaved,
    dynamic onPasswordPressed,
    isObscure = false,
    dynamic onSubmitted,
    TextInputType keyboardType = TextInputType.text,
    TextEditingController? controller,
    bool autoValidate = false,
  }) {
    return Container(
      child: Theme(
        data: ThemeData(
          primaryColor: ConstantColor.APP_COLOR,
          hintColor: Colors.grey,
        ),
        child: TextFormField(
          style: TextStyle(
            fontSize: SizeConfig.getFont(16.0),
            color: Colors.white,
          ),
          controller: controller,
          obscureText: isObscure,
          autovalidate: autoValidate,
          decoration: InputDecoration(
            prefixIcon: Icon(
              iconField,
              color: Colors.white,
              size: SizeConfig.getIconSize(25.0),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                suffixIcon,
                color: ConstantColor.APP_COLOR,
                size: SizeConfig.safeBlockHorizontal * 5,
              ),
              onPressed: onPasswordPressed,
            ),
            hintText: hint,
            labelStyle: TextStyle(color: Colors.white, fontSize: SizeConfig.getFont(16.0)),
            hintStyle: TextStyle(fontSize: SizeConfig.getFont(16.0)),
          ),
          onChanged: onChange,
          onFieldSubmitted: onSubmitted,
          validator: validator,
          onSaved: onSaved,
          keyboardType: keyboardType,
        ),
      ),
    );
  }

  static Widget buildPhoneformField({
    String? hint,
    IconData? iconField,
    dynamic onChange,
    dynamic validator,
    dynamic onSaved,
    isObscure = false,
    dynamic onSubmitted,
    TextInputType keyboardType = TextInputType.text,
    bool autoValidate = false,
  }) {
    return Container(
      child: Theme(
        data: ThemeData(
          primaryColor: ConstantColor.APP_COLOR,
          hintColor: Colors.grey,
        ),
        child: TextFormField(
          inputFormatters: <TextInputFormatter>[
            LengthLimitingTextInputFormatter(12),
            WhitelistingTextInputFormatter.digitsOnly,
            BlacklistingTextInputFormatter.singleLineFormatter,
          ],
          obscureText: isObscure,
          autovalidate: autoValidate,
          decoration: InputDecoration(
            prefixIcon: Icon(
              iconField,
              color: ConstantColor.APP_COLOR,
            ),
            hintText: hint,
            labelStyle: TextStyle(color: Colors.black),
            hintStyle: TextStyle(),
          ),
          onChanged: onChange,
          onFieldSubmitted: onSubmitted,
          validator: validator,
          onSaved: onSaved,
          keyboardType: keyboardType,
        ),
      ),
    );
  }

  static Widget buildPhoneformFieldWithoutIcon({
    String? hint,
    IconData? iconField,
    dynamic onChange,
    dynamic validator,
    dynamic onSaved,
    isObscure = false,
    dynamic onSubmitted,
    TextInputType keyboardType = TextInputType.text,
    bool autoValidate = false,
  }) {
    return Container(
      child: Theme(
        data: ThemeData(
          primaryColor: ConstantColor.APP_COLOR,
          hintColor: Colors.grey,
        ),
        child: TextFormField(
          inputFormatters: <TextInputFormatter>[
            LengthLimitingTextInputFormatter(12),
            WhitelistingTextInputFormatter.digitsOnly,
            BlacklistingTextInputFormatter.singleLineFormatter,
          ],
          obscureText: isObscure,
          autovalidate: autoValidate,
          decoration: InputDecoration(
            hintText: hint,
            labelStyle: TextStyle(color: Colors.black),
            hintStyle: TextStyle(),
          ),
          onChanged: onChange,
          onFieldSubmitted: onSubmitted,
          validator: validator,
          onSaved: onSaved,
          keyboardType: keyboardType,
        ),
      ),
    );
  }

  static Widget formFieldWithoutIcon({
    String? hint,
    IconData? iconField,
    TextEditingController? controller,
    IconData? suffixIcon,
    dynamic onChange,
    dynamic onPasswordPressed,
    isObscure = false,
    isEmail = false,
    bool enabled = true,
    String? lableText,
    TextInputType keyboardType = TextInputType.text,
    bool autoValidate = false,
    double width = 200,
  }) {
    return SizedBox(
      width: width,
      height: 40,
      child: Theme(
        data: ThemeData(
          primaryColor: ConstantColor.APP_COLOR,
          hintColor: Colors.grey,
        ),
        child: TextField(
          controller: controller,
          enabled: enabled,
          obscureText: isObscure,
          //autovalidate: autoValidate,
          decoration: InputDecoration(
            suffixIcon: IconButton(
              icon: Icon(
                suffixIcon,
                color: ConstantColor.APP_COLOR,
              ),
              onPressed: onPasswordPressed,
            ),
            hintText: hint,
            labelText: lableText,
            labelStyle: const TextStyle(color: Colors.black),
            hintStyle: const TextStyle(),
          ),
          onChanged: onChange,
          keyboardType: keyboardType,
        ),
      ),
    );
  }

  static Widget roundedFormField({
    String? hint,
    IconData? iconField,
    IconData? suffixIcon,
    dynamic onChange,
    dynamic validator,
    dynamic onSaved,
    dynamic onPasswordPressed,
    isObscure = false,
    isEmail = false,
    bool enabled = true,
    dynamic onSubmitted,
    String? lableText,
    TextInputType keyboardType = TextInputType.text,
    bool autoValidate = false,
    double width = 280,
  }) {
    return Container(
      width: width,
      height: 40,
      child: Theme(
        data: ThemeData(
          primaryColor: ConstantColor.APP_COLOR,
          hintColor: Colors.black,
        ),
        child: TextFormField(
          enabled: enabled,
          obscureText: isObscure,
          autovalidate: autoValidate,
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            suffixIcon: IconButton(
              icon: Icon(
                suffixIcon,
                color: ConstantColor.APP_COLOR,
                size: 20,
              ),
              onPressed: onPasswordPressed,
            ),
            hintText: hint,
            labelText: lableText,
            labelStyle: TextStyle(color: Colors.black),
            hintStyle: TextStyle(),
            contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
          ),
          onChanged: onChange,
          onFieldSubmitted: onSubmitted,
          validator: (value) {
            return Validation.validateValue(value!, hint!, isEmail);
          },
          onSaved: onSaved,
          keyboardType: keyboardType,
        ),
      ),
    );
  }

  static Widget nonroundedFormField({
    String? hint,
    IconData? iconField,
    IconData? suffixIcon,
    dynamic onChange,
    dynamic validator,
    dynamic onSaved,
    dynamic onPasswordPressed,
    isObscure = false,
    isEmail = false,
    bool enabled = true,
    dynamic onSubmitted,
    String? lableText,
    TextInputType keyboardType = TextInputType.text,
    bool autoValidate = false,
    double? width,
  }) {
    return Container(
      width: width,
      height: 40,
      child: Theme(
        data: ThemeData(
          primaryColor: ConstantColor.APP_COLOR,
          hintColor: Colors.black,
        ),
        child: TextFormField(
          enabled: enabled,
          obscureText: isObscure,
          autovalidate: autoValidate,
          decoration: InputDecoration(
            border: OutlineInputBorder(
                //borderRadius: BorderRadius.circular(20.0),
                ),
            suffixIcon: IconButton(
              icon: Icon(
                suffixIcon,
                color: ConstantColor.APP_COLOR,
                size: 20,
              ),
              onPressed: onPasswordPressed,
            ),
            hintText: hint,
            labelText: lableText,
            labelStyle: TextStyle(color: Colors.black),
            hintStyle: TextStyle(),
            contentPadding: EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
          ),
          onChanged: onChange,
          onFieldSubmitted: onSubmitted,
          validator: (value) {
            return Validation.validateValue(value!, hint!, isEmail!);
          },
          onSaved: onSaved,
          keyboardType: keyboardType,
        ),
      ),
    );
  }
}
