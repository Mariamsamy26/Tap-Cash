//Yara Mahmoud yahia

import 'package:flutter/material.dart';

class NewCustomTextField extends StatelessWidget {
  String hintText;
  TextInputType keyboardType;
  String? Function(String?) validator;
  bool obscureText;
  String LabelText;

  NewCustomTextField({
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    required this.validator,
    required this.LabelText,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      minLines: 10,
      maxLines: null,
      obscureText: obscureText,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        labelText: LabelText,
        hintText: hintText,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(17)),
            borderSide: BorderSide(color: Color.fromRGBO(239, 239, 239, 1))),
      ), //Phone Number
      validator: validator,
    );
  }
}
