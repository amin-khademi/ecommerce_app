import 'package:ecommerce_app/resource/dimens.dart';
import 'package:flutter/material.dart';

class AppButtonStyle {
  AppButtonStyle._();
  static ButtonStyle mainButtonStyle = ButtonStyle(
      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Dimens.medium))));
}
