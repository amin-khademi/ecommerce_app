import 'package:ecommerce_app/resource/color.dart';
import 'package:ecommerce_app/resource/dimens.dart';
import 'package:flutter/material.dart';


class SurfaceContainer extends StatelessWidget {
  const SurfaceContainer({
    super.key,
    required this.child,
  });

  final child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.fromLTRB(
          Dimens.medium, Dimens.medium, Dimens.medium, 0),
      padding: const EdgeInsets.all(Dimens.medium),
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.medium),
          color: LightAppColor.surfaceColor),
      child: child,
    );
  }
}