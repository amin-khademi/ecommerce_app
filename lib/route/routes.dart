import 'package:ecommerce_app/route/names.dart';
import 'package:ecommerce_app/screens/auth/verify.code.screen.dart';
import 'package:ecommerce_app/screens/main_screen/main_screen.dart';
import 'package:ecommerce_app/screens/product_list_screen.dart';
import 'package:ecommerce_app/screens/product_single_screen.dart';
import 'package:ecommerce_app/screens/register_screen.dart';
import 'package:ecommerce_app/screens/auth/send.sms.screen.dart';
import 'package:flutter/material.dart';

Map<String, Widget Function(BuildContext)> routes = {
  ScreensNames.sendOtpScreen: (context) => SendSmsScreen(),
  ScreensNames.getOtpScreen: (context) => VerifyCodeScreen(),
  ScreensNames.registerScreen: (context) => Registerscreen(),
  ScreensNames.mainScreen: (context) => const MainScreen(),
  ScreensNames.productListScreen: (context) => const ProductListScreen(),
  ScreensNames.productSingleScreen: (context) => const ProductSingleScreen(),
};
