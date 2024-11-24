import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_challenge/Core/utils/spacing.dart';

class CarsStatus extends StatelessWidget {
  const CarsStatus({super.key, required this.layoutType});

  final String layoutType;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(
            left: index < 9
                ? layoutType == "mobile"
                    ? 10.w
                    : layoutType == "tablet"
                        ? 8.w
                        : 4.w
                : 0,
          ),
          child: Column(
            children: [
              CircleAvatar(
                radius: 30.r,
                backgroundColor: Colors.green,
                child: CircleAvatar(
                  radius: 28.r,
                  backgroundImage:
                      const AssetImage('assets/images/Image 1.png'),
                ),
              ),
              verticalSpace(2),
              Text(
                'جيلي',
                style: TextStyle(
                  fontSize: layoutType == "mobile"
                      ? 12.sp
                      : layoutType == "tablet"
                          ? 8.sp
                          : 4.sp,
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
