import 'package:flutter/material.dart';
import 'package:ui_challenge/Core/utils/spacing.dart';
import 'package:ui_challenge/Features/details/widgets/car_details_item.dart';

class CarDetailsList extends StatelessWidget {
  const CarDetailsList({super.key, required this.layoutType});

  final String layoutType;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarDetailsItem(
          icon: 'assets/icons/car_front.png',
          title: 'اللون الخارجي',
          value: 'أبيض',
          layoutType: layoutType,
        ),
        verticalSpace(2),
        CarDetailsItem(
          icon: 'assets/icons/car_side.png',
          title: 'اللون الداخلي',
          value: 'بيج',
          layoutType: layoutType,
        ),
        verticalSpace(2),
        CarDetailsItem(
          icon: 'assets/icons/car_seat.png',
          title: 'نوع المقعد',
          value: 'مخمل',
          layoutType: layoutType,
        ),
        verticalSpace(2),
        CarDetailsItem(
          icon: 'assets/icons/car_top.png',
          title: 'فتحة سقف',
          value: '✓',
          layoutType: layoutType,
        ),
        verticalSpace(2),
        CarDetailsItem(
          icon: 'assets/icons/car_camera.png',
          title: 'كاميرا خلفية',
          value: '✓',
          layoutType: layoutType,
        ),
        verticalSpace(2),
        CarDetailsItem(
          icon: 'assets/icons/car_sensor.png',
          title: 'سينسور',
          value: 'أمامي - خلفي',
          layoutType: layoutType,
        ),
        verticalSpace(2),
        CarDetailsItem(
          icon: 'assets/icons/car_engine.png',
          title: 'سلندر',
          value: '6',
          layoutType: layoutType,
        ),
        verticalSpace(2),
        CarDetailsItem(
          icon: 'assets/icons/gearshift.png',
          title: 'ناقل الحركة',
          value: 'أوتوماتيك',
          layoutType: layoutType,
        ),
      ],
    );
  }
}
