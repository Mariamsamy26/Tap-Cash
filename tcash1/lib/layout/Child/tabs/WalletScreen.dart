//Mariam Samy Zaky
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../shared/style/color_manager.dart';
import '../../../shared/components/Custom_Dedelis.dart';
import '../../../shared/components/Custom_IconBottom.dart';


class WalletScreen extends StatelessWidget {
  const WalletScreen({Key? key}) : super(key: key);

  @override
  Widget  build(BuildContext context) {
    return  Container(
      color: ColorManager.colorinkBlue,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 50, 20, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary:Colors.transparent,
                  elevation: 0.0,
                ),

                onPressed: () {  },
                child: Icon(Icons.notifications_none), ),
              Spacer(),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary:Colors.transparent,
                  elevation: 0.0,
                ),
                onPressed: () {  },
                child: Icon(Icons.account_circle_outlined), ),
            ],),

            Text('Available Balance' ,style: Theme.of(context).textTheme.headline5 ),
            Text('500.0 EGP' ,style: Theme.of(context).textTheme.headline4 ),
            Container(
              padding: const EdgeInsets.only(top:10.0),
              decoration: BoxDecoration(
                border: Border.all(width: 5, color: ColorManager.colorWhit),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(50),
                  topLeft: Radius.circular(50),
                ),
                color: ColorManager.colorWhit,
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(children: [
                    CustomIconBottom(
                      color: Colors.transparent,
                      iconPath: 'assets/images/Time Machine.png',
                      text: 'History',
                      OnPressed: () {  },),
                    CustomIconBottom(
                      color: Colors.transparent,
                      iconPath: 'assets/images/Transaction.png',
                      text: 'Request',
                      OnPressed: () {  },),
                  ],),

                  SizedBox(height: 31,),

                  Text('Payment List',style: Theme.of(context).textTheme.headline2),
                  SizedBox(height: 10,),
                  Row(children: [
                    CustomIconBottom(iconPath: 'assets/images/Wi-Fi.png',
                      text: 'Internet',
                      OnPressed: () {  },),
                    CustomIconBottom(iconPath: 'assets/images/Lightning Bolt.png',
                      text: 'Electricity',
                      OnPressed: () {  },),
                    CustomIconBottom(iconPath: 'assets/images/Ticket.png',
                      text: 'Voucher',
                      OnPressed: () {  },),
                    CustomIconBottom(iconPath: 'assets/images/Approval.png',
                      text: 'Assurance',
                      OnPressed: () {  },),
                  ],),
                  SizedBox(height: 15,),
                  Row(children: [
                    CustomIconBottom(iconPath: 'assets/images/Mobile Payment.png',
                      text: 'Mobile Credit',
                      OnPressed: () {  },),
                    CustomIconBottom(iconPath: 'assets/images/Cheque.png',
                      text: 'Bill',
                      OnPressed: () {  },),
                    CustomIconBottom(iconPath: 'assets/images/Plus.png',
                      text: 'More',
                      OnPressed: () {  },),
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

                ],),),

          ],),
      ),
    );
  }
}
