import 'package:common_widget/app/constants/app_font_family.dart';
import 'package:flutter/material.dart';

class JioTextStyle {
  //Light text
  static TextStyle getLightTextStyle({
    double size,
    Color color,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        fontFamily: FontFamily.jiotypeLight,
        decoration: TextDecoration.none);
  }

  //Medium text
  static TextStyle getMediumTextStyle({
    double size,
    Color color,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        fontFamily: FontFamily.jiotypeMedium,
        decoration: TextDecoration.none);
  }

  //Bold text
  static TextStyle getBoldTextStyle({
    double size,
    Color color,
    FontWeight fontWeight = FontWeight.normal,
  }) {
    return TextStyle(
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
        fontFamily: FontFamily.jiotypeLight,
        decoration: TextDecoration.none);
  }
}
