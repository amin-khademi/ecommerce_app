import 'package:ecommerce_app/componets/button_style.dart';
import 'package:ecommerce_app/componets/text_style.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  MainButton({super.key, required this.text, required this.onPressed});
  final String text;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .07,
      width: size.width * .75,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text,style: LightTextStyleApp.mainButton ,),
        style: AppButtonStyle.mainButtonStyle ,
      ),
    );
  }
}
