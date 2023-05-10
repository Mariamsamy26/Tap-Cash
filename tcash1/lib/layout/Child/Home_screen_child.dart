//Mariam samy zaky

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tcash1/layout/Child/tabs/ChildAccuntScreen.dart';
import 'package:tcash1/layout/Child/tabs/Home_Chield.dart';
import 'package:tcash1/layout/Child/tabs/WalletScreen.dart';
import 'package:tcash1/layout/Child/tabs/carbonAnalyticsChild.dart';



class HomeScreenChild extends StatefulWidget {
  static const String rountName ='home Child';

  @override
  State<HomeScreenChild> createState() => _HomeScreenChildState();
}

class _HomeScreenChildState extends State<HomeScreenChild> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:tabs[currentIndex] ,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      floatingActionButton: FloatingActionButton(
        child: Container(
          width: 60,
          height: 60,
          child: Image.asset('assets/images/add icon.png',width: 26.5,height: 26.5),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: [Color.fromRGBO(57, 120,132, 100),
              Color.fromRGBO(94, 161, 173, 100),
              Color.fromRGBO(134, 205, 218, 100)]),
            // borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
        ),
        onPressed: () {},
      ),

      bottomNavigationBar: BottomAppBar(
        notchMargin: 5,
        clipBehavior: Clip.antiAlias,
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          currentIndex: currentIndex,
          onTap: (index){
            currentIndex=index;
            setState(() {
            });
          },
          items: [
            BottomNavigationBarItem(icon:Image.asset("assets/images/Home.png"),label: "Home"),
            BottomNavigationBarItem(icon:Image.asset("assets/images/window.png"),label: "Wallet"),
            BottomNavigationBarItem(icon:Image.asset("assets/images/carbon_analytics.png"),label: "carbon analytics"),
            BottomNavigationBarItem(icon:Image.asset("assets/images/user.png"),label: "user"),

          ],),
      ),
    );
  }
}
List<Widget>tabs=[Catigory(),WalletScreen(),carbonAnalyticsChild(),
  ChildAccuntTabScreen()];

