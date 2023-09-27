import 'package:ecommerce_app/resource/color.dart';
import 'package:ecommerce_app/resource/dimens.dart';
import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData(
      brightness: Brightness.light,
      iconTheme: const IconThemeData(color: Colors.black),
      primaryColor: LightAppColor.primary,
      scaffoldBackgroundColor: LightAppColor.scaffoldBackgroundColor,
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: MaterialStateColor.resolveWith((states) {
            if (states.contains(MaterialState.focused)) {
              return LightAppColor.focusedTextfield;
            } else {
              return LightAppColor.unFocusedTextfield;
            }
          }),
          contentPadding: const EdgeInsets.all(Dimens.medium),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimens.medium),
              borderSide: const BorderSide(color: LightAppColor.primary)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(Dimens.medium),
              borderSide: const BorderSide(color: LightAppColor.border))));
}
