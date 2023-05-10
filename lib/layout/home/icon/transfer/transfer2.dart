//Yara Mahmomoud Yahia

import 'package:flutter/material.dart';
import 'package:tcash1/shared/components/custom_textField.dart';
import '../../../../shared/components/Custom_ElevatedButton.dart';
import '../../../../shared/components/newCustom_textfield.dart';

class transfer2 extends StatefulWidget {
  @override
  State<transfer2> createState() => _transfer2State();
}

class _transfer2State extends State<transfer2> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

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
              style: TextStyle(color: Color.fromRGBO(21, 34, 79, 100))),
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
                  SizedBox(
                    height: 25,
                  ),
                  //Entar Amount***
                  CustomTextField(
                    keyboardType: TextInputType
                        .text, // hintText: StringsManager.emailHint,
                    validator: (text) {
                      if (text?.isEmpty ?? false) {
                        return "Entar Amount";
                      }
                      return null;
                    },
                    LabelText: 'Entar Amount',
                    hintText: '1000 EG',
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //Reason***
                  CustomTextField(
                    keyboardType: TextInputType
                        .text, // hintText: StringsManager.emailHint,
                    validator: (text) {
                      if (text?.isEmpty ?? false) {
                        return "Enter you Reson";
                      }
                      return null;
                    },
                    LabelText: 'Enter you Reson',
                    hintText: 'Reson',
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  // Send a Massege
                  NewCustomTextField(
                    keyboardType: TextInputType.text,
                    validator: (text) {
                      if (text?.isEmpty ?? false) {
                        return "Send Massage";
                      }
                      return null;
                    },
                    LabelText: 'Send Massage',
                    hintText: 'Write....',
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  //Buttom Transfer
                  CustomElevatedButton(
                    text: 'Transfer',
                    width: 152,
                    height: 50,
                    OnPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
