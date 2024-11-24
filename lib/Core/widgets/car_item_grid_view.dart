import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/Features/details/views/car_details_view.dart';
import 'package:ui_challenge/Features/home/widgets/home_view_car_item.dart';

class CarItemGridView extends StatelessWidget {
  const CarItemGridView({
    super.key,
    required this.layoutType,
    this.itemCount = 9,
  });

  final String layoutType;
  final int itemCount;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: layoutType == "desktop" ? 3 : 2,
        childAspectRatio: 1.5,
      ),
      itemCount: itemCount,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 24,
            horizontal: 12,
          ),
          child: InkWell(
            borderRadius: BorderRadius.circular(12),
            onTap: () {
              Get.to(
                () => const CarDetailsView(),
                transition: Transition.leftToRightWithFade,
              );
            },
            child: CarItem(
              layoutType: layoutType,
              image: index % 2 == 0
                  ? 'assets/images/Image 1.png'
                  : 'assets/images/Image 11.png',
            ),
          ),
        );
      },
    );
  }
}
