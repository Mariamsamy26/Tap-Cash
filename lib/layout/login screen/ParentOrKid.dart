//Mariam samy zaky

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tcash1/shared/style/strings_manager.dart';
import '../../shared/components/Custom_ElevatedButton.dart';
import 'LogInByChild.dart';
import 'LogInScreen.dart';

class ParentOrKid extends StatefulWidget {
  static const String rountName ='ParentOrKid';

  @override
  State<ParentOrKid> createState() => _ParentOrKidState();
}

class _ParentOrKidState extends State<ParentOrKid> {
  GlobalKey<FormState> RowKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          body : Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height:184,
                ),

              Text( StringsManager.parentToUnlock, style: Theme.of(context).textTheme.headline2),
                SizedBox(
                  height:16,
                ),

                Image.asset('assets/images/closed lock.png',width: 165,height: 227,),

                SizedBox(
                  height:39,
                ),
                Row(
                  key:RowKey,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomElevatedButton(text: 'I’m  a Child',
                    OnPressed: (){
                      Navigator.of(context).pushReplacementNamed(LogInChild.rountName);
                    },
                        width: 152,height: 50),

                    CustomElevatedButton(text: 'I’m  a Parent',
                      width: 152,height: 50,
                        OnPressed: (){
                        Navigator.of(context).pushReplacementNamed(LogInScreen.rountName);
                      }, ),

                ],)

            ],),
          ),
    );
  }
}
