import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/Core/controllers/theme_controller.dart';
import 'package:ui_challenge/Core/utils/spacing.dart';
import 'package:ui_challenge/Features/home/widgets/home_view_banner.dart';
import 'package:ui_challenge/Core/widgets/car_item_grid_view.dart';
import 'package:ui_challenge/Features/home/widgets/home_view_cars_categories.dart';
import 'package:ui_challenge/Features/home/widgets/home_view_cars_status.dart';
import 'package:ui_challenge/Features/home/widgets/home_view_search_bar.dart';

class HomeDesktopLayout extends StatelessWidget {
  HomeDesktopLayout({super.key});
  final ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          // Left Sidebar
          Expanded(
            flex: 2,
            child: Column(
              children: [
                verticalSpace(16),
                SizedBox(
                  height: 100.h,
                  child: const CarsStatus(
                    layoutType: "desktop",
                  ),
                ),
                verticalSpace(16),
                const HomeViewBanner(layoutType: "desktop"),
                verticalSpace(16),
                const CarsCategories(
                  layoutType: "desktop",
                ),
              ],
            ),
          ),

          // Main Content
          Expanded(
            flex: 5,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  verticalSpace(16),
                  const HomeViewSearchBar(
                    hintText: "ابحث عن سيارتك",
                    layoutType: "desktop",
                  ),
                  verticalSpace(16),
                  const CarItemGridView(
                    layoutType: "desktop",
                  ),
                  verticalSpace(16),
                  Image.asset(
                    'assets/images/Image 5.png',
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
