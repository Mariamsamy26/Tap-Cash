//Yara Mahmoud yahia

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotifiacationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            body: Container(
                color: Colors.white70,
                child: AppBar(
                  centerTitle: true,
                  //hide backButtom
                  automaticallyImplyLeading: true,
                  //color backButtom
                  iconTheme:
                      IconThemeData(color: Color.fromRGBO(21, 34, 79, 100)),
                  backgroundColor: Colors.white70,
                  //style text appbar
                  title: Text(
                    'Notifcation',
                    style: TextStyle(
                      color: Color.fromRGBO(21, 34, 79, 100),
                      fontWeight: FontWeight.w500,
                      fontSize: 24,
                    ),
                  ),
                ))),
      ],
    );
  }
}
