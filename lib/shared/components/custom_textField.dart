//Yara Mahmoud yahia

import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hintText;
  TextInputType keyboardType;
  String? Function(String?) validator;
  bool obscureText;
  String LabelText;

  CustomTextField({
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    required this.validator,
    required this.LabelText,
});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText:obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: LabelText,
        hintText: hintText,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: Color.fromRGBO(239, 239, 239, 1))),),//Phone Number
      validator: validator,
    );
  }
}
