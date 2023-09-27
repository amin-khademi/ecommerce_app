import 'package:ecommerce_app/componets/extentions.dart';
import 'package:ecommerce_app/componets/text_style.dart';
import 'package:ecommerce_app/gen/assets.gen.dart';
import 'package:ecommerce_app/resource/color.dart';
import 'package:ecommerce_app/resource/dimens.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    this.productName,
    required this.productPrice,
    this.productOldPrice = 0,
    this.discount = 0,
    this.timer = 0,
  });
  final productName;
  final int productPrice;
  final int productOldPrice;
  final int discount;
  final int timer;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Dimens.medium),
      margin: const EdgeInsets.all(Dimens.medium),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimens.medium),
          gradient: const LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: LightAppColor.productBkGradient)),
      // height: 300,
      width: 200,
      child: Column(
        children: [
          Image.asset(Assets.png.unnamed.path),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              productName,
              style: LightTextStyleApp.productTitle,
            ),
          ),
          Dimens.medium.height,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "${productPrice.sepratorWithComma}تومان",
                    style: LightTextStyleApp.title,
                  ),
                  Visibility(
                      visible: discount > 0 ? true : false,
                      child: Text(productOldPrice.toString(),
                          style: LightTextStyleApp.oldPrice)),
                ],
              ),
              Visibility(
                visible: discount > 0 ? true : false,
                child: Container(
                  padding: const EdgeInsets.all(Dimens.small * .5),
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(
                      Dimens.large,
                    ),
                  ),
                  child: Text(
                    "$discount%",
                    style: const TextStyle(color: Colors.white, fontSize: 12),
                  ),
                ),
              )
            ],
          ),
          Dimens.medium.height,
          Visibility(
            visible: timer > 0 ? true : false,
            child: const Divider(
              thickness: 1.2,
              color: LightAppColor.primary,
            ),
          ),
          Dimens.small.height,
          Visibility(
            visible: timer > 0 ? true : false,
            child: Text(
              "${timer.toString()}:00:34",
              style: LightTextStyleApp.prodTimerstyle,
            ),
          )
        ],
      ),
    );
  }
}
