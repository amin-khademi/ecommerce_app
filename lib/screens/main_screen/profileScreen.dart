import 'package:ecommerce_app/componets/extentions.dart';
import 'package:ecommerce_app/componets/text_style.dart';
import 'package:ecommerce_app/gen/assets.gen.dart';
import 'package:ecommerce_app/resource/color.dart';
import 'package:ecommerce_app/resource/dimens.dart';
import 'package:ecommerce_app/resource/strings.dart';
import 'package:ecommerce_app/widgets/app.bar.dart';
import 'package:ecommerce_app/widgets/surface.container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: const CustomAppBar(
          child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          AppStrings.profile,
          style: LightTextStyleApp.title,
        ),
      )),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: Dimens.large),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Dimens.large.height,
                ClipRRect(
                  borderRadius: BorderRadius.circular(300),
                  child: Image.asset(Assets.png.avatar.path),
                ),
                Dimens.medium.height,
                const Text(
                  "ساسان صفری",
                  style: LightTextStyleApp.avatarText,
                ),
                Dimens.medium.height,
                const Align(
                  alignment: Alignment.centerRight,
                  child: Text(
                    AppStrings.activeAddress,
                    style: LightTextStyleApp.title,
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Row(
                      children: [
                        SvgPicture.asset(Assets.svg.leftArrow),
                        const Expanded(
                          child: Text(
                            AppStrings.lurem,
                            style: LightTextStyleApp.title,
                            softWrap: true,
                            maxLines: 2,
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    )),
                Dimens.small.height,
                Container(
                  height: 2,
                  width: double.infinity,
                  color: LightAppColor.surfaceColor,
                ),
                Dimens.small.height,
                ProfileItem(
                  svgIcon: Assets.svg.user,
                  content: "ساسان صفری",
                ),
                ProfileItem(
                  svgIcon: Assets.svg.cart,
                  content: "57874",
                ),
                ProfileItem(
                  svgIcon: Assets.svg.phone,
                  content: "136554",
                ),
                const SurfaceContainer(child: Text("قوانین"))
              ],
            ),
          ),
        ),
      ),
    ));
  }
}

class ProfileItem extends StatelessWidget {
  ProfileItem({
    super.key,
    required this.svgIcon,
    required this.content,
  });

  final svgIcon;
  final content;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimens.small),
      child: Align(
          alignment: Alignment.centerRight,
          child: Row(
            children: [
              Expanded(
                child: Text(
                  content,
                  style: LightTextStyleApp.title,
                  softWrap: true,
                  maxLines: 2,
                  textAlign: TextAlign.right,
                ),
              ),
              Dimens.small.width,
              SvgPicture.asset(svgIcon),
            ],
          )),
    );
  }
}