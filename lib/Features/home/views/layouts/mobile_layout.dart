import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/Core/controllers/theme_controller.dart';

class MobileLayout extends StatelessWidget {
  MobileLayout({super.key});
  final ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Container(
          height: 150,
          color: themeController.isDarkMode.value
              ? Colors.blue[900]
              : Colors.blue[100],
          child: const Center(
            child: Text(
              'Main Content',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          height: 100,
          color: themeController.isDarkMode.value
              ? Colors.blue[800]
              : Colors.blue[50],
          child: const Center(
            child: Text(
              'Sub Content',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    );
  }
}
