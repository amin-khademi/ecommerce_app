import 'package:ecommerce_app/gen/fonts.gen.dart';
import 'package:ecommerce_app/resource/color.dart';
import 'package:flutter/material.dart';

class LightTextStyleApp {
  LightTextStyleApp._();
  static const TextStyle title = TextStyle(
      fontFamily: FontFamily.dana, fontSize: 14, color: LightAppColor.title);
  static const TextStyle productTitle = TextStyle(
      fontFamily: FontFamily.dana,
      fontWeight: FontWeight.normal,
      fontSize: 16,
      color: LightAppColor.title);
  static const TextStyle hint = TextStyle(
      fontFamily: FontFamily.dana, fontSize: 14, color: LightAppColor.hint);
  static const TextStyle avatarText = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 11,
      color: Colors.black54,
      fontWeight: FontWeight.w400);

  static const TextStyle prodTimerstyle = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 13,
      color: LightAppColor.primary,
      fontWeight: FontWeight.w400);

  static const TextStyle oldPrice = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 12,
      decoration: TextDecoration.lineThrough,
      color: LightAppColor.oldColor,
      fontWeight: FontWeight.w400);

  static const TextStyle mainButton = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 15,
      fontWeight: FontWeight.w500,
      color: LightAppColor.mainButtonText);
  static const TextStyle primaryTextStyle = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 13,
      fontWeight: FontWeight.w500,
      color: LightAppColor.primary);
  static const TextStyle btmNavActive = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 12,
      color: LightAppColor.btmNavActive);
  static const TextStyle btmNavUnActive = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 12,
      color: LightAppColor.btmNavUnActive);
  static const TextStyle amazing = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 22,
      fontWeight: FontWeight.w700,
      color: LightAppColor.amazingColor);
}
