//Mariam samy zaky

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tcash1/shared/components/Custom_Form.dart';
import 'package:tcash1/shared/style/color_manager.dart';
import '../../../shared/components/Custom_IconBottom.dart';
import '../../../shared/style/strings_manager.dart';
import '../icon/Parent_Lock.dart';
import '../icon/add_beneficiary.dart';
import '../icon/notification.dart';
import '../icon/transfer/transfer1.dart';

class HomeScreenTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(10, 50, 20, 0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Row(
              children: [
                Text(StringsManager.TotalBalance, style: Theme
                    .of(context).textTheme.headline1),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:Colors.transparent,
                    elevation: 0.0,
                  ),
                  onPressed: () {  },
                  child: Icon(Icons.notifications_none, color: ColorManager.colorinkBlue), ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:Colors.transparent,
                    elevation: 0.0,
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  NotifiacationScreen()));
                  },
                  child: Icon(Icons.account_circle_outlined, color: ColorManager.colorinkBlue), ),
              ],),

              Text('32 000 EGP', style: Theme
                  .of(context).textTheme.headline1), //WAIT Bata Dase
              SizedBox(height: 35),

              //Expenses
              Row(
                children: [
                  InkWell(
                    onTap:(){
                    } ,
                    child: Text("Expenses",style: Theme.of(context).textTheme.headline2 ),),
                  SizedBox(width: 10),
                  InkWell(
                    onTap:(){
                    } ,
                    child: Text("Income",style: Theme.of(context).textTheme.headline2 ),),
                  Spacer(),
                  InkWell(
                    onTap:(){
                    } ,
                    child: Text("Add Expense",style: Theme.of(context).textTheme.headline3 ),),


                ],),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CustomForm(
                    icon: (Icons.shopping_cart_outlined ) ,
                    color2: ColorManager.colorPink,
                    text: ('Grocery'),
                    text2: '2 000 EGP',
                     OnPressed: () {  },
                    color: ColorManager.colorBabyPink, ),
                  CustomForm(
                    icon: (Icons.shopping_bag_outlined ) ,
                    color2: ColorManager.colorBlue,
                    text: 'Shop',
                    text2: '1 500 EGP',
                    OnPressed: () {  },
                    color: ColorManager.colorBabyBlue ),
                  CustomForm(
                    icon: (Icons.phone ) ,
                    color2: ColorManager.colorGreen,
                    text: 'phone',
                    text2: '500 EGP',
                    OnPressed: () {  },
                    color: ColorManager.colorBabyGreen, ),
              ],),

              SizedBox(height: 30),

              //Bills
              Row(
                children: [
                  Text("Bills",style: Theme.of(context).textTheme.headline2 ),
                  SizedBox(width: 10),
                  Spacer(),
                  InkWell(
                    onTap:(){
                    } ,
                    child: Text("Add Bill",style: Theme.of(context).textTheme.headline3 ),),
                ],),
              SizedBox(height: 10),
              Row(

                children: [
                  CustomForm(
                      icon: (Icons.blinds_rounded ) ,
                      color2: ColorManager.colorBlue,
                      text: 'Home Rent',
                      text2: '2 500 EGP',
                      OnPressed: () {  },
                      color: ColorManager.colorBabyBlue ),
                  SizedBox(width: 20),
                  CustomForm(
                    icon: (Icons.emoji_transportation) ,
                    color2: ColorManager.colorGreen,
                    text: 'Transport',
                    text2: '500 EGP',
                    OnPressed: () {  },
                    color: ColorManager.colorBabyGreen, ),
                ],),

              SizedBox(height: 30),

              //Services
              Row(
                children: [
                  Text("Services",style: Theme.of(context).textTheme.headline2 ),
                  SizedBox(width: 10),
                  Spacer(),
                  InkWell(
                    onTap:(){
                    } ,
                    child: Text("See all",style: Theme.of(context).textTheme.headline3 ),),
                ],),
              SizedBox(height: 10),
              Row(
                children: [
                  CustomIconBottom(
                    heightIcon: 40,
                    width: 90,
                    radius:40.0,
                    iconPath: 'assets/images/Group 3185.png',
                    text: 'Add',
                    OnPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  addBeneficiry()));
                    },
                  ),
                  CustomIconBottom(
                    heightIcon: 40,
                    width: 90,
                    radius:40.0,
                    iconPath: 'assets/images/Group 3186.png',
                    text: 'Walled',
                    OnPressed: () {  },
                  ),
                  CustomIconBottom(
                    heightIcon: 40,
                    width: 90,
                    radius:40.0,
                    iconPath: 'assets/images/Group 3187.png',
                    text: 'pay',
                    OnPressed: () {  },
                  ),
                  CustomIconBottom(
                    heightIcon: 40,
                    width: 90,
                    radius:40.0,
                    iconPath: 'assets/images/Group 3188.png',
                    text: 'Transfer',
                    OnPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  transfer1()));
                    },
                  ),
                ],),
              SizedBox(height: 5),
              Row(
                children: [
                CustomIconBottom(
                  heightIcon: 40,
                  width: 90,
                  radius:40.0,
                  iconPath: 'assets/images/Group 1000001043.png',
                  text: 'Parent Lock',
                  OnPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) =>  ParentLockScreen()));
                  },
                ),
              ],)


          ],)
        ),),
    );
  }
}
