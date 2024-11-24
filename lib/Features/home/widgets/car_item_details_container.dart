import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_challenge/Core/utils/spacing.dart';

class CarItemDetailsContainer extends StatelessWidget {
  const CarItemDetailsContainer({
    super.key,
    required this.icon,
    required this.categoryText,
    required this.valueText,
    required this.iconColor,
    required this.layoutType,
  });

  final String icon, categoryText, valueText;
  final Color iconColor;
  final String layoutType;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        padding: const EdgeInsets.all(4),
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
                    ? 16
                    : layoutType == "tablet"
                        ? 18
                        : 16,
                height: layoutType == "mobile"
                    ? 16
                    : layoutType == "tablet"
                        ? 18
                        : 16,
              ),
            if (icon.isNotEmpty) verticalSpace(2),
            Text(
              categoryText,
            textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: layoutType == "mobile"
                    ? 10.sp
                    : layoutType == "tablet"
                        ? 6.sp
                        : 4.sp,
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
                    ? 8.sp
                    : layoutType == "tablet"
                        ? 6.sp
                        : 3.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
