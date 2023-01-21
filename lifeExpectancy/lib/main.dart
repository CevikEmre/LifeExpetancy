import 'package:flutter/material.dart';
import 'package:life_expectancy/consts.dart';
import 'InputPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Life Expectancy",
            style: kTitle
          ),
          centerTitle: true,
          backgroundColor: Color(0xFF658864),
        ),
        body: InputPage(),
      ),
    );
  }
}
