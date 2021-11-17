import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDropDownButton extends StatefulWidget {
  List<String>? dropDownItem;
  Function? selectedValue;
  String hint;

  CustomDropDownButton({
    Key? key,
    this.dropDownItem,
    this.selectedValue,
    required this.hint,
  }) : super(key: key);
  @override
  _CustomDropDownButtonState createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  late String _currentItemSelected;
  final List<String> items = [];
  String? hint;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        // width: Dimensions.Size_300,
        width: 100,
        child: DropdownButton<String>(
          hint: const Text(''),
          elevation: 2,
          isExpanded: true,
          items: widget.dropDownItem!.map((String dropDownStringItem) {
            return DropdownMenuItem<String>(
              value: dropDownStringItem,
              child: Text(
                dropDownStringItem,
                style: TextStyle(fontSize: 16.0),
              ),
            );
          }).toList(),
          onChanged: (String? val) {
            widget.selectedValue!(val);

            setState(() {
              _currentItemSelected = val!;
            });
          },
          value: _currentItemSelected,
        ));
  }
}
