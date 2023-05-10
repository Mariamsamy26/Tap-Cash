//Mariam Samy Zaky

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../shared/components/Custom_Dedelis.dart';
import '../../../shared/components/Custom_FormPhoto.dart';
import '../../../shared/style/color_manager.dart';

class CardScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height:30),

            //my Card
            Row(
              children: [
                SizedBox(width: 120),
                Text('My Card', style: Theme.of(context).textTheme.headline1),
                Spacer(),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary:Colors.transparent,
                    elevation: 0.0,
                  ),
                  onPressed: () {  },
                  child: Icon(Icons.menu,color: ColorManager.colorBlakBlue,), ),
              ],),

            //Card
            Stack(
              children: [
                Image.asset('assets/images/Card.png' ,
                    width: 900,
                    height: 220,
                    fit: BoxFit.fill),
                Padding(
                  padding: EdgeInsets.only(top: 70, left: 50),
                  child: Text(
                    "**** **** **** 1289",
                    style: TextStyle(fontSize: 25, color: ColorManager.colorWhit),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 155, left: 45),
                  child: Text(
                    "Renad Seif ",
                    style: TextStyle(fontSize: 14,
                        color: ColorManager.colorWhit,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 155, left: 250),
                  child: Text(
                    "02/24 ",
                    style: TextStyle(fontSize: 14,
                        color: ColorManager.colorWhit,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomFormPhoto(
                    OnPressed: () {  },
                    iconPath: 'assets/images/Vector.png',
                    text: 'Your Balance',
                    text2: '19885 EGP'),
                CustomFormPhoto(
                    OnPressed: () {  },
                    iconPath: 'assets/images/Salary.png',
                    text: 'Loan Amount',
                    text2: '19885 EGP'),
              ],),

            //Recent Transaction
            SizedBox(height: 40,),
            Row(
              children: [
                InkWell(
                  onTap:(){
                  } ,
                  child: Text("Recent Transaction",style: Theme.of(context).textTheme.headline2 ),),
                SizedBox(width: 10),

                Spacer(),
                InkWell(
                  onTap:(){
                  } ,
                  child: Text("see all",style: Theme.of(context).textTheme.headline2 ),),
              ],),
            Column(children: [
              CustomDedelis(
                iconPath: 'assets/images/Starbucks.png',
                text: 'Starbucks',
                text2: '-500 EGP',
                OnPressed: () {  },),
              CustomDedelis(
                iconPath: 'assets/images/Netflix.png',
                text: 'Netflix',
                text2: '-600 EGP',
                OnPressed: () {  },
              ),
              CustomDedelis(
                iconPath: 'assets/images/Upwork.png',
                text: 'Upwork',
                text2: ('+335 EGP' ),
                colorText2: ColorManager.colorToGreen,
                OnPressed: () {  },

              )
            ],),



          ],),
      ),
    );
  }
}


