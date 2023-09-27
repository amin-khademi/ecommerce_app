import 'package:flutter/material.dart';

abstract class LightAppColor {
  LightAppColor._();
  static const Color title = Colors.black;
  static const Color shadow = Color.fromARGB(90, 0, 0, 0);
  static const Color focusedTextfield = Colors.white;
  static const Color unFocusedTextfield = Color.fromARGB(255, 251, 251, 251);
  static const Color hint = Colors.grey;
  static const Color appBar = Color.fromARGB(255, 255, 255, 255);
  static const Color searchBar = Color.fromARGB(255, 255, 255, 255);
  static const Color border = Color.fromARGB(255, 217, 220, 228);
  static const Color focusedBorderColro = Color.fromARGB(255, 0, 117, 251);
  static const Color buttonColor = Color.fromARGB(255, 0, 117, 251);
  static const Color primary = Color.fromARGB(255, 0, 117, 251);
  static const Color surfaceColor = Color.fromARGB(255, 243, 243, 243);
  static const Color scaffoldBackgroundColor =
      Color.fromARGB(255, 251, 251, 251);
  static const Color mainButtonText = Color.fromARGB(255, 255, 255, 255);
  static const Color btmNavColor = Color.fromARGB(255, 255, 255, 255);
  static const Color btmNavActive = Color.fromARGB(255, 0, 0, 0);
  static const Color btmNavUnActive = Color.fromARGB(255, 196, 196, 196);
}
