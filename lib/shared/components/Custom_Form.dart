//Mariam samy zaky

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomForm extends StatelessWidget {
  void Function()? OnPressed;
  IconData icon;
  String text;
  String text2;
  Color color;
  Color color2;


  CustomForm({
    required this.OnPressed,
    required this.icon,
    required this.text,
    required this.text2,
    required this.color,
    required this.color2,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 120,
      child: ElevatedButton(
        onPressed: OnPressed,
        style: ElevatedButton.styleFrom(
          primary:color,
          elevation: 0.0,
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(icon, color: color2),
            Text(text ,style: Theme.of(context).textTheme.headline2),
            Text(text2 ,style: Theme.of(context).textTheme.headline2),
          ],
        ),
      ),
    );
  }
}
