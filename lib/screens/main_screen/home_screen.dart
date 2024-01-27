import 'package:ecommerce_app/componets/extentions.dart';
import 'package:ecommerce_app/gen/assets.gen.dart';
import 'package:ecommerce_app/resource/color.dart';
import 'package:ecommerce_app/resource/dimens.dart';
import 'package:ecommerce_app/resource/strings.dart';
import 'package:ecommerce_app/widgets/app_slider.dart';
import 'package:ecommerce_app/widgets/cat_widget.dart';
import 'package:ecommerce_app/widgets/product_item.dart';
import 'package:ecommerce_app/widgets/search_bar.dart';
import 'package:ecommerce_app/widgets/vertical_text_product.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          // physics: const BouncingScrollPhysics(),
          child: Column(
            children: [
              SearchBarr(
                onTap: () {},
              ),
              const AppSlider(
                imgList: [],
              ),
              //category
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CatWidget(
                      title: AppStrings.desktop,
                      icon: Assets.svg.desktop,
                      colors: LightAppColor.catDesktopColro,
                      ontap: () {}),
                  CatWidget(
                      title: AppStrings.digital,
                      icon: Assets.svg.digital,
                      colors: LightAppColor.catDigitalColro,
                      ontap: () {}),
                  CatWidget(
                      title: AppStrings.smart,
                      icon: Assets.svg.smart,
                      colors: LightAppColor.catSmartColor,
                      ontap: () {}),
                  CatWidget(
                      title: AppStrings.classic,
                      icon: Assets.svg.clasic,
                      colors: LightAppColor.catClassicColro,
                      ontap: () {})
                ],
              ),
              Dimens.medium.height,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Row(
                  children: [
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 8,
                        shrinkWrap: true,
                        reverse: true,
                        itemBuilder: (context, index) {
                          return const ProductItem(
                            productName: "...ساعت مردانه",
                            productPrice: 21000,
                            discount: 34,
                            productOldPrice: 3000,
                            timer: 23,
                          );
                        },
                      ),
                    ),
                    const VerticalText(
                      title: AppStrings.amazing,
                    )
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Row(
                  children: [
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 8,
                        shrinkWrap: true,
                        reverse: true,
                        itemBuilder: (context, index) {
                          return const ProductItem(
                            productName: "...ساعت مردانه",
                            productPrice: 21000,
                            discount: 34,
                            productOldPrice: 3000,
                          );
                        },
                      ),
                    ),
                    const VerticalText(
                      title: AppStrings.topSells,
                    ),
                  
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                child: Row(
                  children: [
                    SizedBox(
                      height: 300,
                      child: ListView.builder(
                        physics: const ClampingScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        itemCount: 8,
                        shrinkWrap: true,
                        reverse: true,
                        itemBuilder: (context, index) {
                          return const ProductItem(
                            productName: "...ساعت مردانه",
                            productPrice: 21000,
                            productOldPrice: 3000,
                          );
                        },
                      ),
                    ),
                    const VerticalText(
                      title: AppStrings.newestProduct,
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
