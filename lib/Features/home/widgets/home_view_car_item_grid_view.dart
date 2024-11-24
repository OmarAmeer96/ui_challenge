import 'package:flutter/material.dart';
import 'package:ui_challenge/Features/home/widgets/home_view_car_item.dart';

class HomeViewCarItemGridView extends StatelessWidget {
  const HomeViewCarItemGridView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 1.5,
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 24,
            horizontal: 12,
          ),
          child: CarItem(
            image: index % 2 == 0
                ? 'assets/images/Image 1.png'
                : 'assets/images/Image 11.png',
          ),
        );
      },
    );
  }
}
