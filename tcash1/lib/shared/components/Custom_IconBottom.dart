//Mariam samy zaky

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../style/color_manager.dart';

class CustomIconBottom extends StatelessWidget {
  String iconPath;
  void Function()? OnPressed;
  String text;
  Color color;
  double radius;
  double width;
  double heightIcon;


  CustomIconBottom({
    required this.iconPath,
    required this.text,
    required this.OnPressed,
    this.color=ColorManager.colorinkBlue,
    this.radius=12.0,
    this.width= 87,
    this.heightIcon=46,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: ElevatedButton(
          onPressed: OnPressed,
          style: ElevatedButton.styleFrom(
            primary:Colors.transparent,
            elevation: 0.0,
          ),
          child:Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  border: Border.all(width: 2,color: color),
                  borderRadius: BorderRadius.all(Radius.circular(radius)),
                ),
                child:
                Image.asset(iconPath ,width: 56,height: heightIcon),

              ),
              Text(text,  style: Theme.of(context).textTheme.headline6,),
            ],)
      ),
    );
  }
}
