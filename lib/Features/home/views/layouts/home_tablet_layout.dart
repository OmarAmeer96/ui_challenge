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

class HomeTabletLayout extends StatelessWidget {
  HomeTabletLayout({super.key});
  final ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          verticalSpace(16),
          SizedBox(
            height: 100.h,
            child: const CarsStatus(
              layoutType: "tablet",
            ),
          ),
          verticalSpace(16),
          const HomeViewBanner(
            layoutType: "tablet",
          ),
          verticalSpace(16),
          const HomeViewSearchBar(
            hintText: "ابحث عن سيارتك",
            layoutType: "tablet",
          ),
          verticalSpace(16),
          const CarsCategories(
            layoutType: "tablet",
          ),
          verticalSpace(16),
          const CarItemGridView(
            layoutType: "tablet",
          ),
          verticalSpace(16),
          Image.asset(
            'assets/images/Image 5.png',
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ],
      ),
    );
  }
}
