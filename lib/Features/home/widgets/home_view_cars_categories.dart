import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_challenge/constants.dart';

class CarsCategories extends StatefulWidget {
  const CarsCategories({super.key, required this.layoutType});

  final String layoutType;

  @override
  State<CarsCategories> createState() => _CarsCategoriesState();
}

class _CarsCategoriesState extends State<CarsCategories> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    final List<String> categories = ['آسيوي', 'أوروبي', 'أمريكي'];

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Wrap(
        alignment: WrapAlignment.center,
        spacing: 8.w,
        runSpacing: 8.h,
        children: List.generate(categories.length, (index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = selectedIndex == index ? -1 : index;
              });
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              curve: Curves.easeOut,
              width: selectedIndex == index ? 130.w : 90.w,
              height: widget.layoutType == "mobile"
                  ? 40.h
                  : widget.layoutType == "tablet"
                      ? 45.h
                      : 50.h,
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? const Color(0xff757685)
                    : kPrimaryColor,
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 4.h),
                child: Center(
                  child: Text(
                    categories[index],
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: widget.layoutType == "mobile"
                          ? 12.sp
                          : widget.layoutType == "tablet"
                              ? 12.sp
                              : 4.sp,
                    ),
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
