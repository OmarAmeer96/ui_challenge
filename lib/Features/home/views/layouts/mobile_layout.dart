import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/Core/controllers/theme_controller.dart';
import 'package:ui_challenge/Core/utils/spacing.dart';
import 'package:ui_challenge/Features/home/widgets/home_view_cars_status.dart';

class MobileLayout extends StatelessWidget {
  MobileLayout({super.key});
  final ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          verticalSpace(16),
          SizedBox(
            height: 100.h,
            child: const CarsStatus(),
          ),
        ],
      ),
    );
  }
}
