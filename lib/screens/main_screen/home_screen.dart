import 'package:ecommerce_app/widgets/app_slider.dart';
import 'package:ecommerce_app/widgets/search_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchBarr(
                onTap: () {},
              ),
              const AppSlider(imgList: [],)
            ],
          ),
        ),
      ),
    );
  }
}
