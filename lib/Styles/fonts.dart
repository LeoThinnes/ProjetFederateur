import 'package:flutter/cupertino.dart';
import 'package:untitled/Styles/colors.dart';

class AppFontStyles {
  static const title1 = TextStyle(fontSize: 48.0, color: AppColors.darkBlue);
  static const title1White = TextStyle(fontSize: 48.0, color: AppColors.white, decoration: TextDecoration.none);
  static const title2DarkBlue =
  TextStyle(fontSize: 36.0, color: AppColors.darkBlue);
  static const title2White = TextStyle(fontSize: 36.0, color: AppColors.white);
  static const title3DarkBlue =
  TextStyle(fontSize: 24.0, color: AppColors.darkBlue, decoration: TextDecoration.none);
  static const title3White = TextStyle(fontSize: 24.0, color: AppColors.white);
  static const bodyBlack = TextStyle(fontSize: 18.0, color: AppColors.black);
  static const bodyWhite = TextStyle(fontSize: 18.0, color: AppColors.white);
  static const small = TextStyle(fontSize: 12.0, color: AppColors.darkBlue);
}

class AppFontFamily {
  static const primaryFont = "Roboto";
}