import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/Core/controllers/theme_controller.dart';
import 'package:ui_challenge/Features/home/views/layouts/desktop_layout.dart';
import 'package:ui_challenge/Features/home/views/layouts/mobile_layout.dart';
import 'package:ui_challenge/Features/home/views/layouts/tablet_layout.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("This is AppBar"),
        actions: [
          Obx(() {
            return IconButton(
              icon: Icon(
                themeController.isDarkMode.value
                    ? Icons.dark_mode
                    : Icons.light_mode,
              ),
              onPressed: themeController.toggleTheme,
            );
          }),
        ],
        automaticallyImplyLeading: false,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 1200) {
            // Desktop Layout
            return DesktopLayout();
          } else if (constraints.maxWidth >= 600) {
            // Tablet Layout
            return TabletLayout();
          } else {
            // Mobile Layout
            return MobileLayout();
          }
        },
      ),
    );
  }
}
