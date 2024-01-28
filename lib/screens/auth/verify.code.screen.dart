import 'dart:async';

import 'package:ecommerce_app/componets/extentions.dart';
import 'package:ecommerce_app/componets/text_style.dart';
import 'package:ecommerce_app/gen/assets.gen.dart';
import 'package:ecommerce_app/resource/dimens.dart';
import 'package:ecommerce_app/resource/strings.dart';
import 'package:ecommerce_app/route/names.dart';
import 'package:ecommerce_app/screens/auth/cubit/auth_cubit.dart';
import 'package:ecommerce_app/widgets/app_textfield.dart';
import 'package:ecommerce_app/widgets/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class VerifyCodeScreen extends StatefulWidget {
  VerifyCodeScreen({super.key});

  @override
  State<VerifyCodeScreen> createState() => _VerifyCodeScreenState();
}

class _VerifyCodeScreenState extends State<VerifyCodeScreen> {
  TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    startTimer();
  }

  late Timer _timer;
  int _start = 120;

  startTimer() {
    const oneSec = Duration(seconds: 1);
    _timer = Timer.periodic(oneSec, (timer) {
      setState(() {
        if (_start == 0) {
          _timer.cancel();
          Navigator.of(context).pop();
        } else {
          _start--;
        }
      });
    });
  }

  String formatTime(int sec) {
    int min = sec ~/ 60;
    int seconds = sec % 60;

    String minStr = min.toString().padLeft(2, "0");
    String secondsStr = seconds.toString().padLeft(2, "0");
    return '$minStr:$secondsStr';
  }

  @override
  Widget build(BuildContext context) {
    final moblieRouteArg = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      body: SafeArea(
          child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Assets.png.mainLogo.path),
            Dimens.medium.height,
            Text(
              AppStrings.otpCodeSendFor
                  .replaceAll(AppStrings.replace, moblieRouteArg),
              style: LightTextStyleApp.title,
            ),
            Dimens.small.height,
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: const Text(
                AppStrings.wrongNumberEditNumber,
                style: LightTextStyleApp.primaryThemeTextStyle,
              ),
            ),
            Dimens.large.height,
            AppTextField(
              lable: AppStrings.enterVerificationCode,
              hint: AppStrings.hintVerificationCode,
              controller: _controller,
              prefixLable: formatTime(_start),
            ),
            BlocConsumer<AuthCubit, AuthState>(
              listener: (context, state) {
                if (state is VerifiedNotRegisteredState) {
                  Navigator.pushNamed(context, ScreensNames.registerScreen);
                } else if (state is VerifiedIsRegisteredState) {
                  Navigator.pushNamed(context, ScreensNames.mainScreen);
                }
              },
              builder: (context, state) {
                if (state is LoadingState) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } else {
                  return MainButton(
                      text: AppStrings.next,
                      onPressed: () {
                        BlocProvider.of<AuthCubit>(context)
                            .verify(moblieRouteArg, _controller.text);
                      });
                }
              },
            )
          ],
        ),
      )),
    );
  }
}