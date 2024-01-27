import 'package:ecommerce_app/componets/text_style.dart';
import 'package:ecommerce_app/gen/assets.gen.dart';
import 'package:ecommerce_app/resource/dimens.dart';
import 'package:ecommerce_app/resource/strings.dart';
import 'package:ecommerce_app/widgets/app.bar.dart';
import 'package:ecommerce_app/widgets/shoping.cart.item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SafeArea(
        child: Scaffold(
      appBar: const CustomAppBar(
          child: Align(
        alignment: Alignment.centerRight,
        child: Text(
          AppStrings.basket,
          style: LightTextStyleApp.title,
        ),
      )),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: Dimens.medium),
            padding: const EdgeInsets.all(Dimens.medium),
            width: double.infinity,
            height: size.height * .1,
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.black12, offset: Offset(0, 3), blurRadius: 3)
            ], color: Colors.white),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(Assets.svg.leftArrow)),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        AppStrings.sendToAddress,
                        style: LightTextStyleApp.caption,
                      ),
                      FittedBox(
                        child: Text(
                          AppStrings.lurem,
                          style: LightTextStyleApp.caption,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(child: ListView.builder(itemBuilder: ((context, index) {
            return ShoppingCartItem(
              oldPrice: 500000,
              price: 100000,
              productTitle: "ساعت شیائومی mi Watch lite",
            );
          }))),
          Container(
            height: 50,
            width: double.infinity,
            color: Colors.white,
          )
        ],
      ),
    ));
  }
}