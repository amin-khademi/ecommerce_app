import 'package:ecommerce_app/resource/color.dart';
import 'package:ecommerce_app/resource/dimens.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar({super.key, required this.child});
  @override
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: preferredSize,
        child: Container(
          height: preferredSize.height,
          decoration: const BoxDecoration(
              color: LightAppColor.appBar,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(Dimens.medium),
                  bottomRight: Radius.circular(Dimens.medium)),
              boxShadow: [
                BoxShadow(color: LightAppColor.shadow, offset: Offset(0, 2))
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: child,
          ),
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(50);
}
