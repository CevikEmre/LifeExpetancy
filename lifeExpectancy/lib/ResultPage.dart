import 'package:flutter/material.dart';
import 'Calculator.dart';
import 'package:life_expectancy/UserInfo.dart';
import 'package:life_expectancy/consts.dart';
class ResultPage extends StatelessWidget {

UserInfo? userInfo;
ResultPage({this.userInfo});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Result Page",
          style: kTitle,
        ),
        backgroundColor: Color(0xFF658864),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 6,
            child: Center(
              child: Text(
                Calculator(userInfo: userInfo).Calculation().round().toString(),
                style: kBlackTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(
                  Color(0xFFF0DBDB),
                ),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                "Geri Dön",
                style: kBlackTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
