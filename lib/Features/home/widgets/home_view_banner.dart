import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomeViewBanner extends StatelessWidget {
  final List<String> imagePaths = const [
    'assets/images/Image 6.png',
    'assets/images/Image 5.png',
  ];

  final String layoutType;

  const HomeViewBanner({super.key, required this.layoutType});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: layoutType == "mobile"
            ? 150.0
            : layoutType == "tablet"
                ? 200.0
                : 150.0,
        autoPlay: true,
        autoPlayInterval: const Duration(seconds: 3),
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        enlargeCenterPage: true,
        viewportFraction: 0.7,
      ),
      items: imagePaths.map((imagePath) {
        return Builder(
          builder: (BuildContext context) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(16.0),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: MediaQuery.of(context).size.width,
              ),
            );
          },
        );
      }).toList(),
    );
  }
}
