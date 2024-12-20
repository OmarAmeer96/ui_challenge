import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_challenge/Core/utils/spacing.dart';

class DetailsViewCarDescriptionItem extends StatelessWidget {
  const DetailsViewCarDescriptionItem({
    super.key,
    required this.icon,
    required this.categoryText,
    required this.valueText,
    this.iconColor = Colors.black,
    required this.layoutType,
  });

  final String icon, categoryText, valueText;
  final Color iconColor;
  final String layoutType;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: const BoxDecoration(
          color: Color(0xfff7f7fd),
          borderRadius: BorderRadius.all(
            Radius.circular(4),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon.isNotEmpty)
              SvgPicture.asset(
                icon,
                colorFilter: ColorFilter.mode(
                  iconColor,
                  BlendMode.srcIn,
                ),
                width: layoutType == "mobile"
                    ? 22
                    : layoutType == "tablet"
                        ? 24
                        : 24,
                height: layoutType == "mobile"
                    ? 22
                    : layoutType == "tablet"
                        ? 24
                        : 24,
              ),
            if (icon.isNotEmpty) verticalSpace(2),
            Text(
              categoryText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: layoutType == "mobile"
                    ? 12.sp
                    : layoutType == "tablet"
                        ? 14.sp
                        : 8.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            verticalSpace(2),
            Text(
              valueText,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: layoutType == "mobile"
                    ? 14.sp
                    : layoutType == "tablet"
                        ? 16.sp
                        : 8.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
