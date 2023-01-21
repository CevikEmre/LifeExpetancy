
import 'package:life_expectancy/UserInfo.dart';

class Calculator{
  UserInfo? userInfo;
  Calculator({this.userInfo});

  Calculation(){
    double? result;
    double average = 65;
    if(userInfo!.genderSelect =='Erkek'){
      result = average+userInfo!.sport!-userInfo!.smoke!/3;
      result = result+userInfo!.height!/userInfo!.weight!;
      return result;
    }
    else
      result = average+userInfo!.sport!-userInfo!.smoke!/3;
    result = result+userInfo!.height!/userInfo!.weight!+5;
    return result;

  }

}
