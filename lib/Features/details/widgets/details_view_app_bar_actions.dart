import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/Features/details/widgets/details_view_app_bar_icon.dart';

class DetailsViewAppBarActions extends StatelessWidget {
  const DetailsViewAppBarActions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
