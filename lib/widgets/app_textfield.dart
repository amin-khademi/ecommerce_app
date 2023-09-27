import 'package:ecommerce_app/componets/text_style.dart';
import 'package:ecommerce_app/resource/dimens.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  String lable;
  final String prefixLable;
  String hint;
  TextEditingController controller;
  Widget icon;
  TextInputType? inputType;
  AppTextField(
      {super.key,
      required this.lable,
      required this.hint,
      required this.controller,
      this.inputType,
      this.prefixLable = "",
      this.icon = const SizedBox()});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimens.medium),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            width: size.width * .75,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  prefixLable,
                  style: LightTextStyleApp.titile,
                ),
                Text(
                  lable,
                  style: LightTextStyleApp.titile,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: Dimens.medium,
          ),
          SizedBox(
            height: size.height * .07,
            width: size.width * .75,
            child: TextField(
              textAlign: TextAlign.center,
              controller: controller,
              keyboardType: inputType,
              decoration: InputDecoration(
                  prefixIcon: icon,
                  hintText: hint,
                  hintStyle: LightTextStyleApp.hint),
            ),
          )
        ],
      ),
    );
  }
}

class MyStyles {}
