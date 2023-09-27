import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/resource/dimens.dart';
import 'package:flutter/material.dart';

final List<String> imgList = [
  "https://ticktackgallery.com/media/wysiwyg/ticktackbanner/women.png",
  "https://ticktackgallery.com/media/wysiwyg/ticktackbanner/men.png",
  "https://ticktackgallery.com/media/wysiwyg/ticktackbanner/women.png",
  "https://ticktackgallery.com/media/wysiwyg/ticktackbanner/men.png",
];

class AppSlider extends StatefulWidget {
  const AppSlider({
    super.key, required this.imgList,
  });

  final List<String> imgList;
  @override
  State<AppSlider> createState() => _AppSliderState();
}

class _AppSliderState extends State<AppSlider> {
  final CarouselController _controller = CarouselController();
  final List<Widget> items = imgList
      .map((e) => Padding(
            padding: const EdgeInsets.all(Dimens.medium),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(Dimens.small),
              child: Image.network(
                e,
                fit: BoxFit.cover,
              ),
            ),
          ))
      .toList();
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 300,
      child: Column(
        children: [
          CarouselSlider(
              carouselController: _controller,
              items: items,
              options: CarouselOptions(
                autoPlay: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                },
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: imgList
                .asMap()
                .entries
                .map((e) => Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GestureDetector(
                        onTap: () {
                          _controller.animateToPage(e.key);
                        },
                        child: Container(
                          width: 8,
                          height: 8,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: _current == e.key
                                  ? Colors.black87
                                  : Colors.grey.shade500),
                        ),
                      ),
                    ))
                .toList(),
          )
        ],
      ),
    );
  }
}
