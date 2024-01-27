import 'package:ecommerce_app/componets/extentions.dart';
import 'package:ecommerce_app/gen/assets.gen.dart';
import 'package:ecommerce_app/resource/color.dart';
import 'package:ecommerce_app/resource/dimens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(
            child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const CartBadge(count: 5),
            Row(
              children: [
                const Text("پرفروش ترین ها"),
                Dimens.small.width,
                SvgPicture.asset(Assets.svg.sort)
              ],
            ),
            IconButton(
                onPressed: () {}, icon: SvgPicture.asset(Assets.svg.close)),
          ],
        )),
        body: Container(
          color: Colors.green,
          width: double.infinity,
          height: double.infinity,
          child: const Center(child: Text("productlistScreen")),
        ),
      ),
    );
  }
}

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

class CartBadge extends StatelessWidget {
  const CartBadge({super.key, this.count = 0});
  final count;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SizedBox(
          height: 32,
          width: 32,
        ),
        SvgPicture.asset(
          Assets.svg.cart,
          colorFilter: const ColorFilter.mode(Colors.black, BlendMode.srcIn),
        ),
        Visibility(
            visible: count > 0 ?? true,
            child: Positioned(
              top: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(4),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.red),
                child: Text(
                  count.toString(),
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ))
      ],
    );
  }
}
