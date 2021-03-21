import 'package:flutter/material.dart';
import 'text_field_container.dart';
import 'package:etqan_company/utilities/constants.dart';

class RoundedField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String txt;
  final Icon iconitem;
  final controlername;
  const RoundedField({
    Key key,
    this.onChanged,
    this.txt,
    this.iconitem,
    this.controlername,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
        controller: controlername,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          hintText: txt,
          icon: iconitem,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
