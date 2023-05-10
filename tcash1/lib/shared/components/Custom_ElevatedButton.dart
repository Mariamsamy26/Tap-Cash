//Mariam samy zaky

import 'package:flutter/material.dart';
import 'package:tcash1/shared/style/color_manager.dart';

class CustomElevatedButton extends StatelessWidget {
  String text;
   void Function()? OnPressed;
  double width;
  double height;

  CustomElevatedButton({
    required this.text,
    required this.OnPressed,
    this.height=62,
    this.width=327,
  });
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width:width,
      height:height ,
        child: ElevatedButton(
          onPressed: OnPressed,
          style: ElevatedButton.styleFrom(
              primary:ColorManager.colorinkBlue,
              elevation: 0.0,
              shape: RoundedRectangleBorder(
                side:  BorderSide(
                  width: 1,
                  color: ColorManager.colorinkBlue,
                ),
                borderRadius: BorderRadius.circular(18),
              )),
          child:
          Text( text,
              style:
              TextStyle(color: ColorManager.colorWhit,
                fontSize: 16,
              )),
        ),
    );
  }
}
