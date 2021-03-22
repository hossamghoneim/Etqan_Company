import 'package:flutter/material.dart';
import 'text_field_container.dart';
import 'package:etqan_company/utilities/constants.dart';

class RoundedField extends StatelessWidget {
  final ValueChanged<String> onChanged;
  final String txt;
  final Icon iconitem;

  const RoundedField({
    Key key,
    this.onChanged,
    this.txt,
    this.iconitem,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        onChanged: onChanged,
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
