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

class DetailsTabletLayout extends StatelessWidget {
  DetailsTabletLayout({super.key});

  final ThemeController themeController = Get.find<ThemeController>();

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                    child: DetailsViewCarDiscriptionList(
                      layoutType: "tablet",
                    ),
                  )
                ],
              ),
              verticalSpace(86),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    CarPriceRow(
                      layoutType: "tablet",
                    ),
                    verticalSpace(16),
                    const CarWarrantyWidget(),
                    verticalSpace(16),
                    const CarDetailsList(
                      layoutType: "tablet",
                    ),
                    verticalSpace(16),
                    const CarDescriptionText(
                      layoutType: "tablet",
                    ),
                    verticalSpace(16),
                    CarProviderWidget(
                      layoutType: "tablet",
                    ),
                    verticalSpace(16),
                  ],
                ),
              ),
              const CarItemGridView(
                layoutType: "tablet",
                itemCount: 2,
              ),
              verticalSpace(100),
            ],
          ),
        ),
        // Fixed Bottom Bar
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: CustonDetailsViewBottomBar(themeController: themeController),
        ),
      ],
    );
  }
}
