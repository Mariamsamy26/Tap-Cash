import 'package:flutter/material.dart';
import 'package:tcash1/layout/home/icon/Parent_Lock.dart';
import 'layout/create account/creatAccount.dart';
import 'layout/login screen/LogInByChild.dart';
import 'layout/login screen/LogInScreen.dart';
import 'layout/login screen/ParentOrKid.dart';
import 'shared/style/my_theme.dart';

void main(){
  runApp(MaterialApp(
    initialRoute:ParentOrKid.rountName ,
    routes:{
      ParentOrKid.rountName:(c)=>ParentOrKid(),
      LogInScreen.rountName:(c)=>LogInScreen(),
      LogInChild.rountName:(C)=>LogInChild(),
      CreatAccountScreen.rountName:(C)=>CreatAccountScreen(),

      } ,
      theme:MyThemedata.litetheme,
      darkTheme:MyThemedata.darktheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
    )
  );


}