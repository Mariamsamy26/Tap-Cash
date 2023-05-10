//Mariam samy zaky

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../style/color_manager.dart';

class CustomElevatedAccountFill extends StatelessWidget {
  String text;
  void Function()? OnPressed;
  double width;
  double height;
  IconData icon;
  IconData icon2;


  CustomElevatedAccountFill({
    this.height=62,
    this.width=311,
    required this.icon,
    required this.text,
    this.icon2=(Icons.arrow_forward_ios_outlined),
    required this.OnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width,
      height:height ,
      child: ElevatedButton(
        onPressed: OnPressed,
        style: ElevatedButton.styleFrom(
            primary:Colors.transparent,
            elevation: 0.0,
        ),
        child:Row(
          children: [
            Icon(icon,color: ColorManager.colorBlakBlue),
            SizedBox(width: 10,),
            Text(text,style: Theme.of(context).textTheme.headline2),
            Spacer(),
            Icon(icon2,color: ColorManager.colorBlakBlue),
          ],
        ),
      ),
    );
  }
}
