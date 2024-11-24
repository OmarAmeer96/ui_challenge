import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DetailsBottomBarIconButton extends StatelessWidget {
  const DetailsBottomBarIconButton({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
  });

  final String icon;
  final Color iconColor, backgroundColor;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 20,
      backgroundColor: backgroundColor,
      child: SvgPicture.asset(
        icon,
        colorFilter: ColorFilter.mode(
          iconColor,
          BlendMode.srcIn,
        ),
        width: 18,
      ),
    );
  }
}
