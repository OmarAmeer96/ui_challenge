import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/Core/controllers/theme_controller.dart';
import 'package:ui_challenge/Core/utils/spacing.dart';

class CarProviderWidget extends StatelessWidget {
  CarProviderWidget({super.key, required this.layoutType});

  final ThemeController themeController = Get.find<ThemeController>();
  final String layoutType;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 23,
            child: Image.asset(
              'assets/images/person.png',
              width: 40,
            ),
          ),
          horizontalSpace(8),
          Text(
            'يوكن للسيارات المعتمدة',
            style: TextStyle(
              color: themeController.isDarkMode.value
                  ? Colors.white
                  : Colors.black.withOpacity(0.6),
              fontSize: layoutType == "mobile"
                  ? 8.sp
                  : layoutType == "tablet"
                      ? 8.sp
                      : 3.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Text(
            'كل السيارات',
            style: TextStyle(
              color: themeController.isDarkMode.value
                  ? Colors.white
                  : Colors.black.withOpacity(0.6),
              fontSize: layoutType == "mobile"
                  ? 8.sp
                  : layoutType == "tablet"
                      ? 8.sp
                      : 3.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
          horizontalSpace(8),
        ],
      ),
    );
  }
}
