import 'package:flutter/material.dart';
import 'package:life_expectancy/consts.dart';

class GenderColumn extends StatelessWidget {
  IconData? icon;
  SizedBox? sizedBox;
  String? gender;

  GenderColumn({this.icon ,this.gender});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
            icon,
          size: 45,
          color: Color(0xFF658864),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          gender!,
          style: kBlackTextStyle,

        )
      ],
    );
  }
}
