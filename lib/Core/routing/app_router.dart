import 'package:flutter/material.dart';
import 'package:ui_challenge/Core/routing/routes.dart';
import 'package:ui_challenge/Features/home/views/home_view.dart';
import 'package:ui_challenge/Features/splash/views/splash_view.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    // ignore: unused_local_variable
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.splashView:
        return MaterialPageRoute(
          builder: (_) => const SplashView(),
        );
      case Routes.homeView:
        return MaterialPageRoute(
          builder: (_) => HomeView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
    }
  }
}
