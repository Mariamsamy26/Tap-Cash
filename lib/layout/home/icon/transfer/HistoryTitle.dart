// Yara Mahmoud Yahia
import 'package:flutter/material.dart';

class HistoryTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 30,
              child: Image.asset('assets/images/user7.png'),
            ),
            SizedBox(
              width: 10,
            ),
            Text(
              'samy',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
            ),
            Row(
              children: [
                Text(
                  "+02*****",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.white24),
                ),
              ],
            )
          ],
        )
      ],
    );
  }
}
