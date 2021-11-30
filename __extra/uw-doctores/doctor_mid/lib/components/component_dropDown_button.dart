import 'package:flutter/material.dart';

class CustomDropDownButton extends StatefulWidget {
  List<String> dropDownItem;
  Function selectedValue;
  String hint;

  CustomDropDownButton({
    this.dropDownItem,
    this.selectedValue,
  });
  @override
  _CustomDropDownButtonState createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  String _currentItemSelected;
  final List<String> items = [];
  String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: Dimensions.Size_300,
        width: 100,
        child: DropdownButton<String>(
          hint: Text(""),
          elevation: 2,
          isExpanded: true,
          items: widget.dropDownItem.map((String dropDownStringItem) {
            return DropdownMenuItem<String>(
              value: dropDownStringItem,
              child: Text(
                dropDownStringItem,
                style: TextStyle(fontSize: 16.0),
              ),
            );
          }).toList(),
          onChanged: (String val) {
            widget.selectedValue(val);

            setState(() {
              this._currentItemSelected = val;
            });
          },
          value: _currentItemSelected,
        ));
  }
}
