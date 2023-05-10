import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../style/color_manager.dart';

class CustomIconHome extends StatelessWidget {
  IconData icon;
  void Function()? OnPressed;
  double width;
  double height;


  CustomIconHome({
    this.height=30,
    this.width=30,
    required this.icon,
    required this.OnPressed,
    required Color color,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: ElevatedButton(
        onPressed: OnPressed,
        style: ElevatedButton.styleFrom(
          primary:Colors.transparent,
          elevation: 0.0,
        ),
        child:Container(
          padding: const EdgeInsets.all(5.0),
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: ColorManager.colorinkBlue),
            borderRadius: BorderRadius.all(Radius.circular(50)),
          ),
          child: Icon(icon,color: ColorManager.colorinkBlue),
        ),
      ),
    );
  }
}
