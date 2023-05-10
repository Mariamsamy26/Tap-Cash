//Yara Mahmoud yahia

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../shared/components/Custom_ElevatedButton.dart';
import '../../shared/components/custom_textField.dart';
import '../../shared/style/strings_manager.dart';
import '../Child/Home_screen_child.dart';

class CreatAccountScreenToChild extends StatefulWidget {
  static const String routeName = 'CreatAccountScreen';

  @override
  State<CreatAccountScreenToChild> createState() => _CreatAccountScreenToChildState();
}

class _CreatAccountScreenToChildState extends State<CreatAccountScreenToChild> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(StringsManager.Create, style: Theme.of(context).textTheme.headline1),
        ),

        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Form(
              key: formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [

                  CustomTextField(
                    keyboardType: TextInputType.visiblePassword,
                    hintText: 'Enter your First Name',
                    validator: (text) {
                      if (text?.isEmpty ?? false) {
                        return "Please Enter Your Name ";
                      }
                      return null;
                    }, LabelText: StringsManager.FristNAME,
                  ), //fristname
                  SizedBox(
                    height: 45,
                  ),

                  CustomTextField(
                    keyboardType: TextInputType.visiblePassword,
                    hintText: 'Enter your Last Name',
                    validator: (text) {
                      if (text?.isEmpty ?? false) {
                        return "Please Enter Your Name ";
                      }
                      return null;
                    }, LabelText: StringsManager.LastNAME,
                  ),//lasttname
                  SizedBox(
                    height: 45,
                  ),

                  CustomTextField(
                    keyboardType: TextInputType.visiblePassword,
                    hintText: 'Enter your email address',
                    validator: (text) {
                      if (text?.isEmpty ?? false) {
                        return "Please Enter Your Name ";
                      }
                      return null;
                    }, LabelText: StringsManager.email,
                  ),//Email

                  SizedBox(
                    height: 45,
                  ),

                  CustomTextField(
                    keyboardType: TextInputType.emailAddress,
                    hintText: 'Enter your password',
                    validator: (text) {
                      if (text?.isEmpty ?? false) {
                        return "Please Enter Your Passowerd ";
                      }
                      return null;
                    }, LabelText: StringsManager.passwordHint,
                  ),//password
                  SizedBox(
                    height: 45,
                  ),

                  CustomElevatedButton(text: 'Sign in',
                    OnPressed: () {
                      creatAccount();
                    },) //login
                ],
              ),
            ),
          ),)
    );
  }
  void creatAccount() {
    if (formKey.currentState!.validate()) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) =>  HomeScreenChild()));
    };
  }
}
