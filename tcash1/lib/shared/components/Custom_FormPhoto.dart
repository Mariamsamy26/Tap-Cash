//Mariam samy zaky

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/color_manager.dart';

class CustomFormPhoto extends StatelessWidget {
  void Function()? OnPressed;
  String iconPath;
  String text;
  String text2;
  Color color;


  CustomFormPhoto({
    required this.OnPressed,
    required this.iconPath,
    required this.text,
    required this.text2,
    this.color=ColorManager.colorBackBlue,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 160,
      height: 150,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 2,color: ColorManager.colorinkBlue),
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
        child: ElevatedButton(
          onPressed: OnPressed,
          style: ElevatedButton.styleFrom(
            elevation: 0.0,
            backgroundColor: color,
          ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10,),
                Image.asset(iconPath ,width: 56),
                Text(text ,style: Theme.of(context).textTheme.headline2),
                Text(text2 ,style: Theme.of(context).textTheme.headline2),
              ],
            ),

        ),
      ),
    );
  }
}
