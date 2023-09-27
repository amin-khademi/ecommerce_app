import 'package:ecommerce_app/componets/text_style.dart';
import 'package:ecommerce_app/resource/strings.dart';
import 'package:flutter/material.dart';

class RegistertionAppBar extends StatelessWidget
    implements PreferredSizeWidget {
  const RegistertionAppBar({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
        preferredSize: Size(size.width, size.height * .1),
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back)),
              const Text(
                AppStrings.register,
                style: LightTextStyleApp.title,
              )
            ],
          ),
        ));
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(size.height * .1);
}
