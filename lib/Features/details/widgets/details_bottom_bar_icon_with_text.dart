import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_challenge/Core/utils/spacing.dart';

class DetailsBottomBarIconWithText extends StatelessWidget {
  const DetailsBottomBarIconWithText({
    super.key,
    required this.icon,
    required this.iconColor,
    required this.backgroundColor,
    required this.buttonText,
    this.borderColor = Colors.transparent,
    required this.textColor,
  });

  final String icon, buttonText;
  final Color iconColor, backgroundColor, borderColor, textColor;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
          side: BorderSide(
            color: borderColor,
            width: 2,
          ),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 6,
        ),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            colorFilter: ColorFilter.mode(
              iconColor,
              BlendMode.srcIn,
            ),
            width: 18,
            height: 18,
          ),
          horizontalSpace(8),
          Text(
            buttonText,
            style: TextStyle(
              fontSize: 14,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
