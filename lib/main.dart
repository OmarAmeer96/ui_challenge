import 'package:flutter/material.dart';
import 'package:ui_challenge/Core/routing/app_router.dart';
import 'package:ui_challenge/ui_challenge.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    UiChallenge(
      appRouter: AppRouter(),
    ),
  );
}
