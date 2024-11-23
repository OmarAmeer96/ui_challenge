import 'package:flutter/material.dart';
import 'package:ui_challenge/Core/controllers/theme_controller.dart';

class HomeViewAppBarActionsIcon extends StatelessWidget {
  const HomeViewAppBarActionsIcon({
    super.key,
    required this.themeController,
    required this.icon,
    required this.onPressed,
  });

  final ThemeController themeController;
  final Widget icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SizedBox(
        height: 24,
        width: 24,
        child: icon,
      ),
      onPressed: onPressed,
    );
  }
}
