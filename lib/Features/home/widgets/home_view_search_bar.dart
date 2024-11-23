import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ui_challenge/constants.dart';

class HomeViewSearchBar extends StatelessWidget {
  final String hintText;

  const HomeViewSearchBar({
    super.key,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintText,
          prefixIcon: SizedBox(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: SvgPicture.asset(
                'assets/icons/Home - Search.svg',
                colorFilter: const ColorFilter.mode(
                  kPrimaryColor,
                  BlendMode.srcIn,
                ),
                width: 16,
              ),
            ),
          ),
          filled: true,
          fillColor: Colors.transparent,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          contentPadding:
              EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
        ),
        style: TextStyle(fontSize: 14.sp),
      ),
    );
  }
}
