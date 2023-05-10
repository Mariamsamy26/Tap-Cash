//Yara Mahmoud yahia

import 'package:flutter/material.dart';
import 'package:tcash1/shared/components/custom_textField.dart';
import 'package:tcash1/shared/style/strings_manager.dart';

class addBeneficiry extends StatefulWidget {
  static const String rountName = 'addBeneficiry';
  @override
  State<addBeneficiry> createState() => _addBeneficiryState();
}

class _addBeneficiryState extends State<addBeneficiry> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  void addBeneficiry() async {
    // var response = await HttpHelper.loginRequest("hghg", "hghjg");
    //var data = jsonDecode(response.body) as Map;
    // data.token
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          //hide backButtom
          automaticallyImplyLeading: true,
          //color backButtom
          iconTheme: IconThemeData(color: Color.fromRGBO(21, 34, 79, 100)),
          title: Text('Add Beneficiry',
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
                  CustomTextField(
                    keyboardType: TextInputType
                        .text, // hintText: StringsManager.emailHint,
                    validator: (text) {
                      if (text?.isEmpty ?? false) {
                        return "Please Enter Card Name";
                      }
                      return null;
                    },
                    LabelText: 'Please Enter Card Name',
                    hintText: 'Renad Seif',
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //Card Num**
                  CustomTextField(
                    keyboardType: TextInputType
                        .text, // hintText: StringsManager.emailHint,
                    validator: (text) {
                      if (text?.isEmpty ?? false) {
                        return "Card Num";
                      }
                      return null;
                    },
                    LabelText: 'Please Enter CardNum',
                    hintText: '********',
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //Card Type
                  CustomTextField(
                    hintText: StringsManager.Create,
                    keyboardType: TextInputType.text,
                    validator: (text) {
                      if (text?.isEmpty ?? false) {
                        return "Please Enter Card Type ";
                      }
                      return null;
                    },
                    LabelText: 'Please Enter Card Type',
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  //Expire of Card***
                  CustomTextField(
                    keyboardType: TextInputType
                        .text, // hintText: StringsManager.emailHint,
                    validator: (text) {
                      if (text?.isEmpty ?? false) {
                        return "Expiry Card";
                      }
                      return null;
                    },
                    LabelText: 'Please Enter Expire Card',
                    hintText: 'DD/MM/YY',
                  ),

                  SizedBox(
                    height: 25,
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
//import 'package:flutter/material.dart';
// import 'package:tcash1/shared/components/custom_textField.dart';
// import 'package:tcash1/shared/style/strings_manager.dart';
//
// class transfer extends StatefulWidget {
//   static const String rountName = 'transfer';
//   @override
//   State<transfer> createState() => _transferState();
// }
//
// class _transferState extends State<transfer> {
//   GlobalKey<FormState> formKey = GlobalKey<FormState>();
//   void addBeneficiry() async {
//     // var response = await HttpHelper.loginRequest("hghg", "hghjg");
//     //var data = jsonDecode(response.body) as Map;
//     // data.token
//   }
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Transfar',
//               style: TextStyle(color: Color.fromRGBO(21, 34, 79, 100))),
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(24.0),
//             child: Form(
//               key: formKey,
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.start,
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   SizedBox(
//                     height: 25,
//                   ),
//                   //Entar Amount***
//                   CustomTextField(
//                     keyboardType: TextInputType
//                         .text, // hintText: StringsManager.emailHint,
//                     validator: (text) {
//                       if (text?.isEmpty ?? false) {
//                         return "Entar Amount";
//                       }
//                       return null;
//                     },
//                     LabelText: 'Entar Amount',
//                     hintText: 'Entar Amount',
//                   ),
//                   SizedBox(
//                     height: 25,
//                   ),
//                   //Reason***
//                   CustomTextField(
//                     keyboardType: TextInputType
//                         .text, // hintText: StringsManager.emailHint,
//                     validator: (text) {
//                       if (text?.isEmpty ?? false) {
//                         return "Enter you Reson";
//                       }
//                       return null;
//                     },
//                     LabelText: 'Enter you Reson',
//                     hintText: 'Enter you Reson',
//                   ),
//                   SizedBox(
//                     height: 25,
//                   ),
//                   // Send a Massege
//                   CustomTextField(
//                     keyboardType: TextInputType
//                         .text, // hintText: StringsManager.emailHint,
//                     validator: (text) {
//                       if (text?.isEmpty ?? false) {
//                         return "Enter you Massage";
//                       }
//                       return null;
//                     },
//                     LabelText: 'Enter you Massage',
//                     hintText: 'Enter you Massage',
//                   ),
//                   SizedBox(
//                     height: 25,
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ));
//   }
// }
