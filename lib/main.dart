import 'package:ecommerce_app/componets/theme.dart';
import 'package:ecommerce_app/route/names.dart';
import 'package:ecommerce_app/route/routes.dart';
import 'package:ecommerce_app/screens/product_list_screen.dart';
import 'package:flutter/material.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return KeyboardDismisser(
      gestures: const [
        GestureType.onTap,
        GestureType.onPanUpdateDownDirection,
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: lightTheme(),
        initialRoute: ScreensNames.root,
        // routes: routes,
        home: ProductListScreen(),
      ),
    );
  }
}
