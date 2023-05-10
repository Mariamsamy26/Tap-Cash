//Mariam samy zaky

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tcash1/layout/login%20screen/ParentOrKid.dart';
import 'package:tcash1/shared/style/color_manager.dart';
import 'package:tcash1/shared/style/my_theme.dart';
import 'package:tcash1/shared/style/strings_manager.dart';
import '../../../shared/components/Custom_ElevatedAccountFill.dart';


class userScreeen extends StatelessWidget {
  const userScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(24.0),
          child: Container(
            color: ColorManager.colorWhit,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height:60),
                Text(StringsManager.myAccount, style: Theme.of(context).textTheme.headline1),

                SizedBox(height:10),
                Image.asset('assets/images/Account photo.png',width: 152,height: 152 ,fit: BoxFit.fill),
                SizedBox(height:10),
                Text('Renadseif2000@gmail.com', style: Theme.of(context).textTheme.headline2),

                Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    border: Border.all(width: 5, color: MyThemedata.litetheme.primaryColor),
                    borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Column(
                    children: [
                      CustomElevatedAccountFill(
                        icon: Icons.settings_outlined,
                        text: 'settings',
                        OnPressed: () {  },) ,//settings

                      CustomElevatedAccountFill(
                        icon: Icons.dashboard_outlined,
                        text: 'Dashboard',
                        OnPressed: () {  },),

                      CustomElevatedAccountFill(
                        icon: Icons.payment,
                        text: 'Payment',
                        OnPressed: () {  },),


                      CustomElevatedAccountFill(
                        icon: Icons.currency_exchange,
                        text: 'Currency',
                        OnPressed: () {  },),

                      CustomElevatedAccountFill(
                        icon: Icons.login,
                        text: 'log out',
                        OnPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  ParentOrKid()));
                        },),

                      CustomElevatedAccountFill(
                        icon: Icons.dark_mode_outlined,
                        text: 'Dark Mood',
                        OnPressed: () {  },),

                      //Dashboard


                    ],),

                ),
              ],),
          ),),);
  }
}
