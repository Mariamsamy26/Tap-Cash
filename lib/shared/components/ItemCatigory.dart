// Yara Mahmoud Yahia

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../style/color_manager.dart';

class CatigryItem extends StatelessWidget {
  void Function()? OnPressed;
  String imagePath;
  String text;
  Color color;

  CatigryItem({
    required this.OnPressed,
    required this.imagePath,
    required this.text,
    this.color = ColorManager.colorBackBlue,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 150,
      child: ElevatedButton(
        onPressed: OnPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.zero,
          elevation: 0.0,
          backgroundColor: color,
        ),
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset(imagePath, fit: BoxFit.cover),
              Text(text, style: Theme.of(context).textTheme.headline2),
            ],
          ),
        ),
      ),
    );
  }
}
