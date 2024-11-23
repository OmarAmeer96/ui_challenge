import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ui_challenge/Core/utils/spacing.dart';

class CarsStatus extends StatelessWidget {
  const CarsStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.only(left: 10.w),
          child: Column(
            children: [
              const CircleAvatar(
                radius: 30,
                backgroundColor: Colors.greenAccent,
                child: CircleAvatar(
                  radius: 28,
                  backgroundImage: AssetImage('assets/images/Image 1.png'),
                ),
              ),
              verticalSpace(5),
              const Text('جيلي'),
            ],
          ),
        );
      },
    );
  }
}
