import 'package:flutter/cupertino.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData = 10 as MediaQueryData;
  static double screenWidth = 300;
  static double screenHeight = 20;
  static double blockSizeHorizontal = 10;
  static double blockSizeVertical = 10;
  static double tableTextSize = 20;
static double testTextSize = 20;
  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    blockSizeHorizontal = screenWidth / 100;
    blockSizeVertical = screenHeight / 100;
    tableTextSize =(screenWidth / 100)*4;
     testTextSize = (screenWidth / 100)*7;
  }
}
