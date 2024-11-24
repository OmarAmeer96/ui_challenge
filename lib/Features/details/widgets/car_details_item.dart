import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/Core/controllers/theme_controller.dart';
import 'package:ui_challenge/Core/utils/spacing.dart';

class CarDetailsItem extends StatelessWidget {
  CarDetailsItem({
    super.key,
    required this.title,
    required this.value,
    required this.icon,
  });

  final String icon, title, value;
  final ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: themeController.isDarkMode.value
            ? Colors.grey.withOpacity(0.4)
            : const Color(0xfff7f7fd),
        borderRadius: BorderRadius.circular(8),
      ),
      height: 40,
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                horizontalSpace(8),
                Image.asset(
                  icon,
                  width: 22,
                ),
                horizontalSpace(16),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Center(
              child: Text(
                value,
                style: const TextStyle(fontSize: 18),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
