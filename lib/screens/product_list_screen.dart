import 'package:ecommerce_app/componets/extentions.dart';
import 'package:ecommerce_app/componets/text_style.dart';
import 'package:ecommerce_app/gen/assets.gen.dart';
import 'package:ecommerce_app/resource/dimens.dart';
import 'package:ecommerce_app/widgets/app.bar.dart';
import 'package:ecommerce_app/widgets/cart.badge.dart';
import 'package:ecommerce_app/widgets/product_item.dart';
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
