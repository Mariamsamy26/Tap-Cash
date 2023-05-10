//Mariam samy zaky

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../style/color_manager.dart';

class CustomDedelis extends StatelessWidget {
  void Function()? OnPressed;
  double width;
  double height;
  Color colorText2;
  String iconPath;
  String text;
  String text2;

  CustomDedelis({
    this.height=62,
    this.width=311,
    this.colorText2=ColorManager.colorRed,
    required this.iconPath,
    required this.text,
    required this.text2,
    required this.OnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width,
      height:height,
        child:Row(
          children: [
            Image.asset(iconPath ,width: 40,height: 40),
            SizedBox(width: 15,),
            Text(text,style: Theme.of(context).textTheme.headline2),
            Spacer(),
            Text(text2, style: TextStyle( color: colorText2 ,
                                      fontWeight: FontWeight.bold,)),
          ],
        ),
    );
  }
}
