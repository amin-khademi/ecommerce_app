import 'package:ecommerce_app/gen/fonts.gen.dart';
import 'package:ecommerce_app/resource/color.dart';
import 'package:flutter/material.dart';

class LightTextStyleApp {
  LightTextStyleApp._();
  static const TextStyle titile = TextStyle(
      fontFamily: FontFamily.dana, fontSize: 14, color: LightAppColor.title);
  static const TextStyle hint = TextStyle(
      fontFamily: FontFamily.dana, fontSize: 14, color: LightAppColor.hint);
  static const TextStyle avatarText = TextStyle(
      fontFamily: FontFamily.dana,
      fontSize: 11,
      color: Colors.black54,
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
}
