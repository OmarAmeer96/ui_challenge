import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/Core/controllers/theme_controller.dart';
import 'package:ui_challenge/Core/utils/spacing.dart';
import 'package:ui_challenge/Features/details/widgets/car_description_text.dart';
import 'package:ui_challenge/Features/details/widgets/car_details_list.dart';
import 'package:ui_challenge/Features/details/widgets/car_price_row.dart';
import 'package:ui_challenge/Features/details/widgets/car_provider_widget.dart';
import 'package:ui_challenge/Features/details/widgets/car_warranty_widget.dart';
import 'package:ui_challenge/Features/details/widgets/details_bottom_bar_icon_button.dart';
import 'package:ui_challenge/Features/details/widgets/details_bottom_bar_icon_with_text.dart';
import 'package:ui_challenge/Features/details/widgets/details_view_app_bar_actions.dart';
import 'package:ui_challenge/Features/details/widgets/details_view_car_description_list.dart';
import 'package:ui_challenge/Features/home/widgets/home_view_car_item_grid_view.dart';

class DetailsMobileLayout extends StatelessWidget {
  DetailsMobileLayout({super.key});

  final ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Scrollable Content
          SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Image.asset(
                      'assets/images/yukon_image.jpg',
                      fit: BoxFit.fill,
                    ),
                    const Positioned(
                      top: 12,
                      right: 0,
                      left: 0,
                      child: DetailsViewAppBarActions(),
                    ),
                    const Positioned(
                      bottom: -70,
                      left: 0,
                      right: 0,
                      child: DetailsViewCarDiscriptionList(),
                    )
                  ],
                ),
                verticalSpace(86),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: Column(
                    children: [
                      CarPriceRow(),
                      verticalSpace(16),
                      const CarWarrantyWidget(),
                      verticalSpace(16),
                      const CarDetailsList(),
                      verticalSpace(16),
                      const CarDescriptionText(),
                      verticalSpace(16),
                      CarProviderWidget(),
                      verticalSpace(16),
                    ],
                  ),
                ),
                const HomeViewCarItemGridView(
                  layoutType: "mobile",
                  itemCount: 2,
                ),
                verticalSpace(100),
              ],
            ),
          ),

          // Bottom Bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              color: themeController.isDarkMode.value
                  ? Colors.grey.shade900
                  : Colors.white,
              padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const DetailsBottomBarIconButton(
                      icon: 'assets/icons/Car Page - Call.svg',
                      iconColor: Color(0xff145d39),
                      backgroundColor: Color(0xffe9f4ea),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const DetailsBottomBarIconButton(
                      icon: 'assets/icons/Car Page - Chat by WHatsapp.svg',
                      iconColor: Color(0xff5f63ff),
                      backgroundColor: Color(0xffeeeeff),
                    ),
                  ),
                  // Car Info Buttons
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const DetailsBottomBarIconWithText(
                      icon: 'assets/icons/Car Page - Location.svg',
                      iconColor: Colors.white,
                      backgroundColor: Color(0xff50536c),
                      buttonText: "موقع السيارة",
                      textColor: Colors.white,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: DetailsBottomBarIconWithText(
                      icon: 'assets/icons/Car Page - Book.svg',
                      iconColor: themeController.isDarkMode.value
                          ? Colors.white
                          : const Color(0xff50536c),
                      backgroundColor: themeController.isDarkMode.value
                          ? Colors.grey.shade900
                          : Colors.white,
                      borderColor: const Color(0xff50536c),
                      buttonText: "احجز السيارة",
                      textColor: themeController.isDarkMode.value
                          ? Colors.white
                          : const Color(0xff50536c),
                    ),
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
