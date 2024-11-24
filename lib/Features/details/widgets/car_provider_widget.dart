import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/Core/controllers/theme_controller.dart';
import 'package:ui_challenge/Core/utils/spacing.dart';

class CarProviderWidget extends StatelessWidget {
  CarProviderWidget({super.key});

  final ThemeController themeController = Get.find<ThemeController>();

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
              fontSize: 16,
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
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          horizontalSpace(8),
        ],
      ),
    );
  }
}
