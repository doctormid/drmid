import 'package:flutter/material.dart';

class CustomRoundedDropDownButton extends StatefulWidget {
  List<String> dropDownItem;
  Function selectedValue;

  CustomRoundedDropDownButton({
    this.dropDownItem,
    this.selectedValue,
  });
  @override
  _CustomRoundedDropDownButtonState createState() =>
      _CustomRoundedDropDownButtonState();
}

class _CustomRoundedDropDownButtonState
    extends State<CustomRoundedDropDownButton> {
  String _currentItemSelected;
  final List<String> items = [];

  @override
  Widget build(BuildContext context) {
    return Container(
        // width: Dimensions.Size_300,
        width: 350,
        height: 40,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
        ),
        child: DropdownButton<String>(
          hint: Text(""),
          isExpanded: true,
          elevation: 2,
          underline: SizedBox(),
          items: widget.dropDownItem.map((String dropDownStringItem) {
            return DropdownMenuItem<String>(
              value: dropDownStringItem,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  dropDownStringItem,
                  style: TextStyle(fontSize: 16.0),
                ),
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
