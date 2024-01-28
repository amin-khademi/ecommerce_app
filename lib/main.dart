import 'package:ecommerce_app/componets/theme.dart';
import 'package:ecommerce_app/route/names.dart';
import 'package:ecommerce_app/route/routes.dart';
import 'package:ecommerce_app/screens/auth/cubit/auth_cubit.dart';
import 'package:ecommerce_app/screens/auth/send.sms.screen.dart';
import 'package:ecommerce_app/screens/main_screen/main_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      child: BlocProvider(
        create: (context) => AuthCubit(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: lightTheme(),
          initialRoute: ScreensNames.root,
          routes: routes,
          home: BlocBuilder<AuthCubit, AuthState>(
            builder: (context, state) {
              if (state is LogInState) {
                return const MainScreen();
              } else if (state is LogOutState) {
                return SendSmsScreen();
              } else {
                return SendSmsScreen();
              }
            },
          ),
        ),
      ),
    );
  }
}
