import 'package:ecommerce_app/gen/assets.gen.dart';
import 'package:ecommerce_app/resource/strings.dart';
import 'package:ecommerce_app/route/names.dart';
import 'package:ecommerce_app/widgets/app_textfield.dart';
import 'package:ecommerce_app/widgets/main_button.dart';
import 'package:flutter/material.dart';

class SendOtpScreen extends StatelessWidget {
  SendOtpScreen({super.key});
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
            SizedBox(
              height: size.height / 7.7,
            ),
            AppTextField(
                lable: AppStrings.enterYourNumber,
                hint: AppStrings.hintPhoneNumber,
                controller: phoneNumberController),
            MainButton(
              text: AppStrings.next,
              onPressed: ()=>Navigator.pushNamed(context,ScreensNames.getOtpScreen),
            )
          ],
        ),
      ),
    ));
  }
}
