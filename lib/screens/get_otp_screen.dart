import 'package:ecommerce_app/componets/extentions.dart';
import 'package:ecommerce_app/componets/text_style.dart';
import 'package:ecommerce_app/gen/assets.gen.dart';
import 'package:ecommerce_app/resource/dimens.dart';
import 'package:ecommerce_app/resource/strings.dart';
import 'package:ecommerce_app/route/names.dart';
import 'package:ecommerce_app/route/routes.dart';
import 'package:ecommerce_app/widgets/app_textfield.dart';
import 'package:ecommerce_app/widgets/main_button.dart';
import 'package:flutter/material.dart';

class GetOtpScreen extends StatelessWidget {
  GetOtpScreen({super.key});
  TextEditingController phoneNumberController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(Assets.png.mainLogo.path),
            Dimens.medium.height,
            Text(
              AppStrings.otpCodeSendFor.replaceAll(AppStrings.replace, "0912"),
              style: LightTextStyleApp.titile,
            ),
            Dimens.small.height,
            Text(
              AppStrings.wrongNumberEditNumber,
              style: LightTextStyleApp.primaryTextStyle,
            ),
            SizedBox(
              height: size.height / 7.7,
            ),
            AppTextField(
              lable: AppStrings.enterVerificationCode,
              hint: AppStrings.hintVerificationCode,
              controller: phoneNumberController,
              prefixLable: "2:34",
            ),
            MainButton(
              text: AppStrings.next,
              onPressed: () =>
                  Navigator.pushNamed(context, ScreensNames.registerScreen),
            )
          ],
        ),
      ),
    ));
  }
}
