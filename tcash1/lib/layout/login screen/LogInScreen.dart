//Mariam samy zaky

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tcash1/shared/components/custom_textField.dart';
import 'package:tcash1/shared/remote/network/http_helper.dart';
import 'package:tcash1/shared/style/strings_manager.dart';

import '../../shared/components/Custom_ElevatedButton.dart';
import '../../shared/components/Custom_IconBottom.dart';
import '../create account/creatAccount.dart';
import '../home/home_screen.dart';

class LogInScreen extends StatefulWidget {
  static const String rountName ='logIn';

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void login()async{
    var response = await HttpHelper.loginRequest("hghg","hghjg");
    var data = jsonDecode(response.body) as Map;
   // data.token
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    height: 125,
                  ),
                  Image.asset('assets/images/logo.png' ,width: 133, height: 88.86),

                  SizedBox(
                    height: 29,
                  ),
                  CustomTextField(
                      keyboardType: TextInputType.emailAddress,
                      hintText:'Example@gmail.com' ,
                      validator: (text) {
                        if (text?.isEmpty ?? false) {
                          return "Please Enter Your mail  ";
                        }
                        return null;
                      }, LabelText: StringsManager.email,
                  ),//Email

                  SizedBox(
                    height: 22,
                  ),
                  CustomTextField(
                      hintText: '.........',
                      obscureText: true,
                      keyboardType: TextInputType.visiblePassword,
                      validator: (text) {
                        if (text?.isEmpty ?? false) {
                          return "Please Enter Your Passowerd ";
                        }
                        return null;
                      }, LabelText: StringsManager.passwordHint,
                  ),//password

                  SizedBox(
                    height: 18,
                  ),
                  CustomElevatedButton(text: 'Sign in',
                    OnPressed: () {
                      loginSuccess();
                    },), //login

                  InkWell(
                    onTap:(){ Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CreatAccountScreen()));
                    } ,
                    child: Text("Donn`t have an account? sign up",style: Theme.of(context).textTheme.headline2 ),),

                ],
              ),
            ),
          ),
        )
    );
  }

  void loginSuccess() {
    if (formKey.currentState!.validate()) {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) =>  homeScreen()));
    };
  }
}
