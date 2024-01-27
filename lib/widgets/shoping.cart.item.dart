import 'package:ecommerce_app/componets/extentions.dart';
import 'package:ecommerce_app/componets/text_style.dart';
import 'package:ecommerce_app/gen/assets.gen.dart';
import 'package:ecommerce_app/resource/color.dart';
import 'package:ecommerce_app/widgets/surface.container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class ShoppingCartItem extends StatelessWidget {
  ShoppingCartItem({
    super.key,
    required this.oldPrice,
    required this.productTitle,
    required this.price,
  });
  int count = 0;
  final productTitle;
  final int price;
  final int oldPrice;
  @override
  Widget build(BuildContext context) {
    return SurfaceContainer(
        child: Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                productTitle,
                style: LightTextStyleApp.productTitle.copyWith(fontSize: 12),
              ),
              Text(
                "قیمت  : ${price.sepratorWithComma} تومان",
                style: LightTextStyleApp.caption,
              ),
              Text(
                "با تخفیف: ${oldPrice.sepratorWithComma}  تومان",
                style: LightTextStyleApp.caption
                    .copyWith(color: LightAppColor.primary),
              ),
              Divider(),
              Row(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(Assets.svg.delete)),
                  Expanded(child: const SizedBox()),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(Assets.svg.minus)),
                  Text("عدد $count"),
                  IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(Assets.svg.plus)),
                ],
              )
            ],
          ),
        ),
        Image.asset(
          Assets.png.unnamed.path,
          height: 110,
        ),
      ],
    ));
  }
}