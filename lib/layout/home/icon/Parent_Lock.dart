//yara mahmoud yahia
import 'package:flutter/material.dart';
import 'package:tcash1/shared/components/ItemCatigory.dart';
import 'package:tcash1/shared/style/strings_manager.dart';

import '../../../shared/components/Custom_ElevatedButton.dart';

class ParentLockScreen extends StatelessWidget {
  GlobalKey<FormState> RowKey = GlobalKey<FormState>();
  static const String routeName = 'ParentLockScreen';
  @override
  List<String> image = [
    'assets/images/Young woman.png',
    'assets/images/Frame 1261154553.png',
    'assets/images/Home2.png',
    'assets/images/Grosary.png'
  ];
  List<String> text = ['Shoping', 'Electrical', 'Pharmacy', 'Grocary'];
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(10, 50, 20, 0),
        child: Column(children: [
          Row(
            children: [
              Text(
                StringsManager.parentLock,
                style: Theme.of(context).textTheme.headline1,
              ),
              Spacer(),
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            key: RowKey,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomElevatedButton(
                  text: 'Shoping', OnPressed: () {}, width: 280, height: 50),
              SizedBox(
                height: 15,
              ),
              CustomElevatedButton(
                  text: 'Payment', OnPressed: () {}, width: 280, height: 50),
              SizedBox(
                height: 15,
              ),
              CustomElevatedButton(
                  text: 'Transfer', OnPressed: () {}, width: 280, height: 50),
              SizedBox(
                height: 15,
              ),
              CustomElevatedButton(
                  text: 'Wallet', OnPressed: () {}, width: 280, height: 50),

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
        ]),
      ),
    );
  }
}
