import 'package:ecommerce_app/componets/extentions.dart';
import 'package:ecommerce_app/resource/dimens.dart';
import 'package:ecommerce_app/resource/strings.dart';
import 'package:ecommerce_app/route/names.dart';
import 'package:ecommerce_app/widgets/app_textfield.dart';
import 'package:ecommerce_app/widgets/avatar.dart';
import 'package:ecommerce_app/widgets/main_button.dart';
import 'package:ecommerce_app/widgets/registeration_app_bar.dart';
import 'package:flutter/material.dart';

class Registerscreen extends StatelessWidget {
  Registerscreen({super.key});
   TextEditingController _controllerName = TextEditingController();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        appBar: RegistertionAppBar(size: size),
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Dimens.large.height,
                  const Avatar(),
                  AppTextField(
                      lable: AppStrings.nameLastName,
                      hint: AppStrings.hintNameLastName,
                      controller: _controllerName),
                  AppTextField(
                      lable: AppStrings.homeNumber,
                      hint: AppStrings.hintHomeNumber,
                      controller: _controllerName),
                  AppTextField(
                      lable: AppStrings.address,
                      hint: AppStrings.hintAddress,
                      controller: _controllerName),
                  AppTextField(
                      lable: AppStrings.postalCode,
                      hint: AppStrings.hintPostalCode,
                      controller: _controllerName),
                  AppTextField(
                    lable: AppStrings.location,
                    hint: AppStrings.hintLocation,
                    controller: _controllerName,
                    icon: const Icon(Icons.location_on),
                  ),
                  MainButton(
                      text: AppStrings.next,
                      onPressed: () => Navigator.of(context)
                          .pushNamed(ScreensNames.mainScreen)),
                  Dimens.large.height,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
