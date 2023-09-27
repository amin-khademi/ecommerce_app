import 'package:ecommerce_app/componets/extentions.dart';
import 'package:ecommerce_app/componets/text_style.dart';
import 'package:ecommerce_app/resource/color.dart';
import 'package:ecommerce_app/resource/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BtmNavItem extends StatelessWidget {
  BtmNavItem(
      {required this.iconSvgPath,
      required this.isActive,
      required this.onTap,
      required this.text});
  String iconSvgPath;
  String text;
  bool isActive;
  void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: LightAppColor.btmNavColor,
        child: Padding(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                iconSvgPath,
                colorFilter: ColorFilter.mode(
                    isActive
                        ? LightAppColor.btmNavActive
                        : LightAppColor.btmNavUnActive,
                    BlendMode.srcIn),
              ),
              Dimens.small.height,
              Text(
                text,
                style: isActive
                    ? LightTextStyleApp.btmNavActive
                    : LightTextStyleApp.btmNavUnActive,
              )
            ],
          ),
        ),
      ),
    );
  }
}
