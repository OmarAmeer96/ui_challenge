import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/Core/controllers/theme_controller.dart';

class CarPriceRow extends StatelessWidget {
  CarPriceRow({
    super.key,
  });

  final ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'يوكن بحالة جيدة',
          style: TextStyle(
            color: themeController.isDarkMode.value
                ? Colors.white
                : Colors.grey[800],
            fontSize: 18.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Text(
          '12,000',
          style: TextStyle(
            fontSize: 20.sp,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          ' د.ك',
          style: TextStyle(
            color: themeController.isDarkMode.value
                ? Colors.white70
                : Colors.grey[700],
            fontSize: 14.sp,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
