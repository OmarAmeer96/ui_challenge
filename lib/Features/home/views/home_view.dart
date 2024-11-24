import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/Core/controllers/theme_controller.dart';
import 'package:ui_challenge/Features/home/views/layouts/desktop_layout.dart';
import 'package:ui_challenge/Features/home/views/layouts/mobile_layout.dart';
import 'package:ui_challenge/Features/home/views/layouts/tablet_layout.dart';
import 'package:ui_challenge/Features/home/widgets/home_view_actions_icon.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          HomeViewAppBarActionsIcon(
            themeController: themeController,
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/Home - menu.svg',
              colorFilter: ColorFilter.mode(
                themeController.isDarkMode.value ? Colors.black : Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
          Obx(() {
            return HomeViewAppBarActionsIcon(
              themeController: themeController,
              onPressed: themeController.toggleTheme,
              icon: Icon(
                themeController.isDarkMode.value
                    ? Icons.dark_mode
                    : Icons.light_mode,
                color: themeController.isDarkMode.value
                    ? Colors.black
                    : Colors.white,
              ),
            );
          }),
          const Spacer(),
          HomeViewAppBarActionsIcon(
            themeController: themeController,
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/Home - Notification .svg',
              colorFilter: ColorFilter.mode(
                themeController.isDarkMode.value ? Colors.black : Colors.white,
                BlendMode.srcIn,
              ),
            ),
          )
        ],
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Color(0xff565974), Color(0xff787987)],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
        ),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth >= 800) {
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
