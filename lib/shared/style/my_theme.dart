import 'package:flutter/material.dart';
import 'package:tcash1/shared/style/color_manager.dart';


class MyThemedata {
  static ThemeData litetheme = ThemeData(
    scaffoldBackgroundColor: ColorManager.colorWhit,

    primaryColor: ColorManager.colorinkBlue,
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      centerTitle: true,
      elevation: 0.0,
    ),

    textTheme: TextTheme(
        headline1: TextStyle(
        color: ColorManager.colorBlakBlue,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),

        headline2: TextStyle(
          color: ColorManager.colorBlakBlue,
          fontSize: 20,
    ),

      headline3: TextStyle(
      color: ColorManager.colorinkBlue,
      fontSize: 20,
    ),

      headline4: TextStyle(
        color: ColorManager.colorWhit,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),

      headline5: TextStyle(
        color: ColorManager.colorWhit,
        fontSize: 16,
      ),

      headline6: TextStyle(
        color: ColorManager.colorBlakBlue,
        fontSize: 11,
      ),


    ),

    bottomNavigationBarTheme: BottomNavigationBarThemeData(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.white,
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),

      )

  );

    static ThemeData darktheme = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    );

  }