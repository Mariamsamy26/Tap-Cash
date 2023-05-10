//Yara Mahmoud yahia
//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:tcash1/layout/home/icon/transfer/transfer2.dart';
import 'package:tcash1/shared/components/Custom_IconBottom.dart';
import 'package:tcash1/shared/components/Custom_IconHome.dart';
import 'package:tcash1/layout/home/icon/transfer/HistoryTitle.dart';
import 'package:tcash1/shared/components/custom_textField.dart';
//import '../../../shared/components/Custom_IconHome.dart';
//import '../../../shared/components/Recent_transaction.dart';
import '../../../../shared/style/color_manager.dart';

class transfer1 extends StatefulWidget {
  @override
  State<transfer1> createState() => _transfer1State();
}

class _transfer1State extends State<transfer1> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  static const String routName = 'transfer1State';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          //hide backButtom
          automaticallyImplyLeading: true,
          //color backButtom
          iconTheme: IconThemeData(color: Color.fromRGBO(21, 34, 79, 100)),
          title: Text('Transfar',
              style: TextStyle(
                color: Color.fromRGBO(21, 34, 79, 100),
              )),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  //*****
                  CustomTextField(
                    keyboardType: TextInputType
                        .text, // hintText: StringsManager.emailHint,
                    validator: (text) {
                      if (text?.isEmpty ?? false) {
                        return "Search";
                      }
                      return null;
                    },
                    LabelText: 'Search',
                    hintText: '',
                  ),
                  SizedBox(
                    height: 17,
                  ),
                  Column(
                    children: [
                      Text(
                        'Recent Transaction',
                        style: TextStyle(
                          color: Color.fromRGBO(21, 34, 79, 100),
                          fontWeight: FontWeight.w400,
                          fontSize: 20,
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      //****
                      Row(
                        children: [
                          CustomIconHome(
                            icon: Icons.person,
                            OnPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => transfer2()));
                            },
                            color: ColorManager.colorBlakBlue,
                          ),
                          Text('Monica',
                              style: Theme.of(context).textTheme.headline2),
                          CustomIconHome(
                            icon: Icons.person,
                            OnPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => transfer2()));
                            },
                            color: ColorManager.colorBlakBlue,
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              "Ahmed",
                              style: Theme.of(context).textTheme.headline2,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        'Hestory',
                        style: TextStyle(
                            color: Color.fromRGBO(21, 34, 79, 100),
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      HistoryTitle(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
