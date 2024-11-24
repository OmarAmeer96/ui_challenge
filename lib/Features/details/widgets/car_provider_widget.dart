import 'package:flutter/material.dart';
import 'package:ui_challenge/Core/utils/spacing.dart';

class CarProviderWidget extends StatelessWidget {
  const CarProviderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            radius: 23,
            child: Image.asset(
              'assets/images/person.png',
              width: 40,
            ),
          ),
          horizontalSpace(8),
          Text(
            'يوكن للسيارات المعتمدة',
            style: TextStyle(
              color: Colors.black.withOpacity(0.6),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(),
          Text(
            'كل السيارات',
            style: TextStyle(
              color: Colors.black.withOpacity(0.6),
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          horizontalSpace(8),
        ],
      ),
    );
  }
}
