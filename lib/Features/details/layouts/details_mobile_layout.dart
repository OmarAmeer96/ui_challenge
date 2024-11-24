import 'package:flutter/material.dart';

class DetailsMobileLayout extends StatelessWidget {
  const DetailsMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            'assets/images/yukon_image.jpg',
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
