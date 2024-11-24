import 'package:flutter/material.dart';
import 'package:ui_challenge/Core/controllers/theme_controller.dart';
import 'package:ui_challenge/Features/details/widgets/details_bottom_bar_icon_button.dart';
import 'package:ui_challenge/Features/details/widgets/details_bottom_bar_icon_with_text.dart';

class CustonDetailsViewBottomBar extends StatelessWidget {
  const CustonDetailsViewBottomBar({
    super.key,
    required this.themeController,
  });

  final ThemeController themeController;

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
