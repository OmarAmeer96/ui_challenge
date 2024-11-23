import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:ui_challenge/Core/controllers/theme_controller.dart';
import 'package:ui_challenge/Core/routing/app_router.dart';
import 'package:ui_challenge/Core/routing/routes.dart';
import 'package:ui_challenge/Features/home/views/home_view.dart';

class UiChallenge extends StatelessWidget {
  final ThemeController themeController = Get.put(ThemeController());
  final AppRouter appRouter;

  UiChallenge({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return ScreenUtilInit(
        designSize: const Size(375, 812),
        minTextAdapt: true,
        child: GetMaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData.light(),
          darkTheme: ThemeData.dark(),
          themeMode: themeController.isDarkMode.value
              ? ThemeMode.dark
              : ThemeMode.light,
          home: HomeView(),
          onGenerateRoute: appRouter.generateRoute,
          initialRoute: Routes.homeView,
        ),
      );
    });
  }
}
