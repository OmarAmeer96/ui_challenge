import 'package:flutter/material.dart';
import 'package:ui_challenge/Core/utils/spacing.dart';
import 'package:ui_challenge/Features/details/widgets/details_view_car_description_item.dart';

class DetailsViewCarDiscriptionList extends StatelessWidget {
  const DetailsViewCarDiscriptionList({super.key, required this.layoutType});

  final String layoutType;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DetailsViewCarDescriptionItem(
          icon: 'assets/icons/Car Page - Slindr.svg',
          categoryText: 'المحرك/سلندر',
          valueText: '6',
          iconColor: Colors.blue,
          layoutType: layoutType,
        ),
        horizontalSpace(12),
        DetailsViewCarDescriptionItem(
          icon: 'assets/icons/Home - Ad2.svg',
          categoryText: 'سنة الصنع',
          valueText: '2019',
          iconColor: Colors.green,
          layoutType: layoutType,
        ),
        horizontalSpace(12),
        DetailsViewCarDescriptionItem(
          icon: 'assets/icons/Home - Ad3.svg',
          categoryText: 'الممشى',
          valueText: '2000',
          iconColor: Colors.orange,
          layoutType: layoutType,
        ),
      ],
    );
  }
}
