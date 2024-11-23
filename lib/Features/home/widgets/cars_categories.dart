import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_challenge/constants.dart';

class CarsCategories extends StatefulWidget {
  const CarsCategories({super.key});

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
              duration: const Duration(milliseconds: 500),
              curve: Curves.easeOut,
              width: selectedIndex == index ? 130.w : 90.w,
              height: 40.h,
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? const Color(0xff757685)
                    : kPrimaryColor,
                borderRadius: BorderRadius.circular(25.r),
              ),
              child: Center(
                child: Text(
                  categories[index],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
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
