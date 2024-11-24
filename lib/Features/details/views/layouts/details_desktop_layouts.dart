import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/Core/controllers/theme_controller.dart';
import 'package:ui_challenge/Core/utils/spacing.dart';
import 'package:ui_challenge/Features/details/widgets/car_description_text.dart';
import 'package:ui_challenge/Features/details/widgets/car_details_list.dart';
import 'package:ui_challenge/Features/details/widgets/car_price_row.dart';
import 'package:ui_challenge/Features/details/widgets/car_provider_widget.dart';
import 'package:ui_challenge/Features/details/widgets/car_warranty_widget.dart';
import 'package:ui_challenge/Features/details/widgets/custom_details_view_bottom_bar.dart';
import 'package:ui_challenge/Features/details/widgets/details_view_app_bar_actions.dart';
import 'package:ui_challenge/Features/details/widgets/details_view_car_description_list.dart';
import 'package:ui_challenge/Core/widgets/car_item_grid_view.dart';

class DetailsDesktopLayout extends StatelessWidget {
  DetailsDesktopLayout({super.key});

  final ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Right Column (Recommended Cars Grid View)
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "مواصفات السيارة",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      verticalSpace(40),
                      const CarDescriptionText(
                        layoutType: "desktop",
                      ),
                      verticalSpace(16),
                      const CarDetailsList(
                        layoutType: "desktop",
                      ),
                    ],
                  ),
                ),
              ),
              // Left Column (Image and Details)
              Expanded(
                flex: 2,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Image.asset(
                            'assets/images/yukon_image.jpg',
                            fit: BoxFit.cover,
                            width: double.infinity,
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
                            child: DetailsViewCarDiscriptionList(
                              layoutType: "desktop",
                            ),
                          ),
                        ],
                      ),
                      verticalSpace(86),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CarPriceRow(
                              layoutType: "desktop",
                            ),
                            verticalSpace(16),
                            const CarWarrantyWidget(),
                            verticalSpace(16),
                            CarProviderWidget(),
                            verticalSpace(16),
                            const Text(
                              "اقتراحات لك",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            verticalSpace(8),
                          ],
                        ),
                      ),
                      const CarItemGridView(
                        layoutType: "desktop",
                        itemCount: 3,
                      ),
                      verticalSpace(100),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Fixed Bottom Bar
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: CustonDetailsViewBottomBar(themeController: themeController),
          ),
        ],
      ),
    );
  }
}
