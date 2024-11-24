import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/Core/utils/spacing.dart';
import 'package:ui_challenge/Features/details/widgets/car_details_list.dart';
import 'package:ui_challenge/Features/details/widgets/car_price_row.dart';
import 'package:ui_challenge/Features/details/widgets/car_warranty_widget.dart';
import 'package:ui_challenge/Features/details/widgets/details_view_app_bar_icon.dart';
import 'package:ui_challenge/Features/details/widgets/details_view_car_description_list.dart';

class DetailsMobileLayout extends StatelessWidget {
  const DetailsMobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                'assets/images/yukon_image.jpg',
                fit: BoxFit.fill,
              ),
              Positioned(
                top: 12,
                right: 0,
                left: 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        Get.back();
                      },
                      icon: const DetailViewAppBarIcon(
                        icon: 'assets/icons/Back.svg',
                      ),
                    ),
                    const Spacer(),
                    IconButton(
                      onPressed: () {},
                      icon: const DetailViewAppBarIcon(
                        icon: 'assets/icons/Car Page - Share.svg',
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const DetailViewAppBarIcon(
                        icon: 'assets/icons/Car Page - Fav.svg',
                      ),
                    ),
                  ],
                ),
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
