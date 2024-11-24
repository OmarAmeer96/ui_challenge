import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarDescriptionText extends StatelessWidget {
  const CarDescriptionText({super.key, required this.layoutType});

  final String layoutType;

  @override
  Widget build(BuildContext context) {
    return Text(
      "عجلات ألومنيوم مصقولة مقاس 20 إنش و6 أضلاع مقاعد أمامية عالية الظهر قابلة للإمالة في 8 وضعيات كهربائية الشحن اللاسلكي مبرد ثلاجة الكونسول الوسطي نظام صوتي من بوز مكون من مكبرات صوت 7 وسائد هوائية مصد أمامي مرتفع متوفر يوفر ارتفاعاً مناسباً عند القيادة على الطرقات الوعرة فتحة سقف بانورامية متوفرة مقاعد جلدية متوفرة",
      style: TextStyle(
        fontSize: layoutType == "mobile"
            ? 14.sp
            : layoutType == "tablet"
                ? 14.sp
                : 4.sp,
      ),
    );
  }
}
