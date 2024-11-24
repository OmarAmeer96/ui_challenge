import 'package:flutter/material.dart';
import 'package:ui_challenge/Core/utils/spacing.dart';
import 'package:ui_challenge/Features/details/widgets/car_details_item.dart';

class CarDetailsList extends StatelessWidget {
  const CarDetailsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CarDetailsItem(
          icon: 'assets/icons/car_front.png',
          title: 'اللون الخارجي',
          value: 'أبيض',
        ),
        verticalSpace(4),
        const CarDetailsItem(
          icon: 'assets/icons/car_side.png',
          title: 'اللون الداخلي',
          value: 'بيج',
        ),
        verticalSpace(4),
        const CarDetailsItem(
          icon: 'assets/icons/car_seat.png',
          title: 'نوع المقعد',
          value: 'مخمل',
        ),
        verticalSpace(4),
        const CarDetailsItem(
          icon: 'assets/icons/car_top.png',
          title: 'فتحة سقف',
          value: '✓',
        ),
        verticalSpace(4),
        const CarDetailsItem(
          icon: 'assets/icons/car_camera.png',
          title: 'كاميرا خلفية',
          value: '✓',
        ),
        verticalSpace(4),
        const CarDetailsItem(
          icon: 'assets/icons/car_sensor.png',
          title: 'سينسور',
          value: 'أمامي - خلفي',
        ),
        verticalSpace(4),
        const CarDetailsItem(
          icon: 'assets/icons/car_engine.png',
          title: 'سيليندر',
          value: '6',
        ),
        verticalSpace(4),
        const CarDetailsItem(
          icon: 'assets/icons/gearshift.png',
          title: 'ناقل الحركة',
          value: 'أوتوماتيك',
        ),
      ],
    );
  }
}
