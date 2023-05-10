//Yara Mahmoud yahia

import 'package:flutter/material.dart';
import 'package:tcash1/shared/components/Custom_ElevatedButton.dart';
import 'package:tcash1/shared/components/ItemCatigory.dart';

class Catigory extends StatefulWidget {
  static const String routName = 'Catigory';

  @override
  State<Catigory> createState() => CatigoryState();
}

class CatigoryState extends State<Catigory> {
  @override
  List<String> image = [
    'assets/images/Young woman.png',
    'assets/images/Frame 1261154553.png',
    'assets/images/Home.png',
    'assets/images/Grosary.png'
  ];
  List<String> text = ['Shoping', 'Electrical', 'Pharmacy', 'Grocary'];
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Text(
          'Total Balance',
          style: TextStyle(
              color: Color.fromRGBO(21, 34, 79, 100),
              fontSize: 24,
              fontWeight: FontWeight.w400),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Image.asset(
                  'assets/images/Wallet1.png',
                  height: 183,
                  width: 343,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomElevatedButton(
                          text: 'Wenter Surprise',
                          OnPressed: () {},
                          width: 130,
                          height: 50),
                      CustomElevatedButton(
                          text: 'Check Now',
                          OnPressed: () {},
                          width: 130,
                          height: 50),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset(
                  'assets/images/gift box.png',
                  height: 98,
                  width: 93,
                  fit: BoxFit.cover,
                ),
                Column(children: [
                  Text('Refer For New Users',
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                          color: Color.fromRGBO(21, 34, 79, 100))),
                  SizedBox(
                    width: 50,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('30.00',
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: Color.fromRGBO(21, 34, 79, 100))),
                      SizedBox(
                        width: 120,
                      ),
                      CustomElevatedButton(
                          text: 'Wenter Surprise',
                          OnPressed: () {},
                          width: 90,
                          height: 50),
                    ],
                  ),
                ]),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'All Prouduct',
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      color: Colors.black),
                ),
                Text('See All',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 16,
                        color: Color.fromRGBO(21, 34, 79, 100))),
              ],
            ),
            GridView.builder(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                crossAxisCount: 2,
                childAspectRatio: 1 / 1,
              ),
              itemBuilder: ((context, index) {
                return CatigryItem(
                  OnPressed: () {},
                  imagePath: image[index],
                  text: text[index],
                );
              }),
              itemCount: 4,
            )
          ],
        ),
      ),
    );
  }
}
