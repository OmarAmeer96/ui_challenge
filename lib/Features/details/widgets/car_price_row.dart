import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/Core/controllers/theme_controller.dart';

class CarPriceRow extends StatelessWidget {
  CarPriceRow({
    super.key,
    required this.layoutType,
  });

  final ThemeController themeController = Get.find<ThemeController>();
  final String layoutType;

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
            fontSize: layoutType == "mobile"
                ? 18.sp
                : layoutType == "tablet"
                    ? 16.sp
                    : 12.sp,
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Text(
          '12,000',
          style: TextStyle(
            fontSize: layoutType == "mobile"
                ? 20.sp
                : layoutType == "tablet"
                    ? 18.sp
                    : 12.sp,
            fontWeight: FontWeight.w900,
          ),
        ),
        Text(
          ' د.ك',
          style: TextStyle(
            color: themeController.isDarkMode.value
                ? Colors.white70
                : Colors.grey[700],
            fontSize: layoutType == "mobile"
                ? 14.sp
                : layoutType == "tablet"
                    ? 12.sp
                    : 8.sp,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
