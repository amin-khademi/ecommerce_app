import 'package:ecommerce_app/componets/extentions.dart';
import 'package:ecommerce_app/componets/text_style.dart';
import 'package:ecommerce_app/gen/assets.gen.dart';
import 'package:ecommerce_app/resource/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class VerticalText extends StatelessWidget {
  const VerticalText({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: RotatedBox(
        quarterTurns: -1,
        child: Column(
          children: [
            Row(
              children: [
                Transform.rotate(
                    angle: 1.5, child: SvgPicture.asset(Assets.svg.back)),
                Dimens.small.width,
                const Text("مشاهده همه")
              ],
            ),
            Text(
              title,
              style: LightTextStyleApp.amazing,
            )
          ],
        ),
      ),
    );
  }
}