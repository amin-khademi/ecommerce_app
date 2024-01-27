import 'package:ecommerce_app/componets/text_style.dart';
import 'package:ecommerce_app/resource/dimens.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CatWidget extends StatelessWidget {
  const CatWidget({
    super.key,
    required this.title,
    this.ontap,
    required this.colors,
    this.icon,
  });
  final String title;
  final ontap;
  final List<Color> colors;
  final icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: ontap,
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(Dimens.small),
            width: size.height * .09,
            height: size.height * .09,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: colors),
                borderRadius: BorderRadius.circular(Dimens.large)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    child: SvgPicture.asset(
                  icon,
                )),
              ],
            ),
          ),
          Text(
            title,
            style: LightTextStyleApp.title.copyWith(fontSize: 13),
          )
        ],
      ),
    );
  }
}
