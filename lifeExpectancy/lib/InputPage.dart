import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:life_expectancy/ResultPage.dart';
import 'package:life_expectancy/consts.dart';
import 'GenderColumn.dart';
import 'MyContainer.dart';
import 'UserInfo.dart';

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String? genderSelect;
  var weight = 70;
  var height = 170;
  double sport = 0;
  double smoke = 0;
  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(
        scaffoldBackgroundColor: const Color(0xffFEFCF3),
        brightness: Brightness.light,
      ),
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      color: Color(0xFFF0DBDB),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            child: Text(
                              "BOY",
                              style: k30TextStyle,
                              textAlign: TextAlign.center,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 6),
                            child:
                                Text(height.toString(), style: kGreenTextStyle),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlinedButton(
                                style: OutlinedButton.styleFrom(side: myBorder),
                                onPressed: () {
                                  setState(() {
                                    height++;
                                  });
                                },
                                onLongPress: () {
                                  setState(() {
                                    height += 10;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Color(0xFF658864),
                                  size: 25,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              OutlinedButton(
                                style: OutlinedButton.styleFrom(side: myBorder),
                                onPressed: () {
                                  setState(() {
                                    height -= 1;
                                  });
                                },
                                onLongPress: () {
                                  setState(() {
                                    height -= 10;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Color(0xFF658864),
                                  size: 25,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      color: Color(0xFFF0DBDB),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "KİLO",
                            style: k30TextStyle,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(vertical: 6),
                            child: Text(
                              weight.toString(),
                              style: kGreenTextStyle,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlinedButton(
                                style: OutlinedButton.styleFrom(side: myBorder),
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                },
                                onLongPress: () {
                                  setState(() {
                                    weight += 10;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.plus,
                                  color: Color(0xFF658864),
                                  size: 25,
                                ),
                              ),
                              SizedBox(
                                width: 15,
                              ),
                              OutlinedButton(
                                style: OutlinedButton.styleFrom(side: myBorder),
                                onPressed: () {
                                  setState(() {
                                    weight--;
                                  });
                                },
                                onLongPress: () {
                                  setState(() {
                                    weight -= 10;
                                  });
                                },
                                child: Icon(
                                  FontAwesomeIcons.minus,
                                  color: Color(0xFF658864),
                                  size: 25,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: MyContainer(
                color: Color(0xFFF0DBDB),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Haftada kaç gün spor yapıyorsunuz ? ",
                      style: kBlackTextStyle,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      sport.round().toString(),
                      style: kGreenTextStyle,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Slider(
                      activeColor: Color(0xFF658864),
                      min: 0,
                      max: 7,
                      value: sport,
                      onChanged: (value) {
                        setState(() {
                          sport = value;
                        });
                      },
                      divisions: 7,
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: MyContainer(
                color: Color(0xFFF0DBDB),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Günde Kaç sigara içiyorsunuz ? ",
                      style: kBlackTextStyle,
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      smoke.round().toString(),
                      style: kGreenTextStyle,
                    ),
                    SizedBox(
                      height: 3,
                    ),
                    Slider(
                      activeColor: Color(0xFF658864),
                      min: 0,
                      max: 40,
                      value: smoke,
                      onChanged: (value) {
                        setState(() {
                          smoke = value;
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MyContainer(
                      onPressed: () {
                        setState(() {
                          genderSelect = "Erkek";
                        });
                      },
                      color: genderSelect == "Erkek"
                          ? Color(0xFFF0DBDB)
                          : Colors.white12,
                      child: GenderColumn(
                        gender: "Erkek",
                        icon: FontAwesomeIcons.mars,
                      ),
                    ),
                  ),
                  Expanded(
                    child: MyContainer(
                      onPressed: () {
                        setState(() {
                          genderSelect = "Kadın";
                        });
                      },
                      color: genderSelect == "Kadın"
                          ? Color(0xFFF0DBDB)
                          : Colors.white12,
                      child: GenderColumn(
                          gender: "Kadın", icon: FontAwesomeIcons.venus),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                    Color(0xFFF0DBDB),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResultPage(
                        userInfo: UserInfo(height: height.toInt(),
                          weight: weight.toInt(),
                            genderSelect: genderSelect!,
                            smoke: smoke!,
                            sport: sport!,
                        ),
                      ),
                    ),
                  );
                },
                child: Text(
                  "Hesapla",
                  style: kBlackTextStyle,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
