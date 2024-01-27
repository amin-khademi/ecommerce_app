import 'package:ecommerce_app/componets/extentions.dart';
import 'package:ecommerce_app/componets/text_style.dart';
import 'package:ecommerce_app/gen/assets.gen.dart';
import 'package:ecommerce_app/resource/color.dart';
import 'package:ecommerce_app/resource/dimens.dart';
import 'package:ecommerce_app/widgets/product_item.dart';
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
          body: const Column(
            children: [TagList(), ProductGridView()],
          )),
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
          ),
        ),
      ],
    );
  }
}

class TagList extends StatelessWidget {
  const TagList({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Dimens.medium),
      child: SizedBox(
        height: 24,
        child: ListView.builder(
          reverse: true,
          itemCount: 6,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(horizontal: Dimens.small),
              padding: const EdgeInsets.symmetric(horizontal: Dimens.small),
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(Dimens.large)),
              child: const Text(
                "نیو فرس",
                style: LightTextStyleApp.tagTitle,
              ),
            );
          },
        ),
      ),
    );
  }
}

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: GridView.builder(
      itemCount: 20,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 2,
          mainAxisSpacing: 2,
          childAspectRatio: .75),
      itemBuilder: (context, index) => const ProductItem(
        productPrice: 100,
        productName: "name",
      ),
    ));
  }
}
