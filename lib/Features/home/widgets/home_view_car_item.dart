import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_challenge/Core/utils/spacing.dart';
import 'package:ui_challenge/Features/home/widgets/car_item_details_container.dart';

class CarItem extends StatelessWidget {
  const CarItem({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          // Background Image
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Overlay Text
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.6),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12),
                  topRight: Radius.circular(12),
                ),
              ),
              child: const Text(
                'جي إم سي | يوكن | الفئة الرابعة',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          // Overlay Details
          Positioned(
            bottom: -30.h,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CarItemDetailsContainer(
                  icon: 'assets/icons/Book Page - Pay.svg',
                  categoryText: 'السعر',
                  valueText: '12,000',
                  iconColor: Color(0xff456385),
                ),
                horizontalSpace(2),
                const CarItemDetailsContainer(
                  icon: 'assets/icons/Home - Ad2.svg',
                  categoryText: 'سنة الصنع',
                  valueText: '2019',
                  iconColor: Color(0xffa4b4ab),
                ),
                horizontalSpace(2),
                const CarItemDetailsContainer(
                  icon: 'assets/icons/Home - Ad3.svg',
                  categoryText: 'كم',
                  valueText: '20,000',
                  iconColor: Color(0xff456385),
                ),
                horizontalSpace(2),
                const CarItemDetailsContainer(
                  icon: 'assets/icons/Car Page - Makfula.svg',
                  categoryText: 'مكفولة لـ',
                  valueText: '2021',
                  iconColor: Color(0xff456385),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
