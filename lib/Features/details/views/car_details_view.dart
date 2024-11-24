import 'package:flutter/material.dart';
import 'package:ui_challenge/Features/details/views/layouts/details_desktop_layouts.dart';
import 'package:ui_challenge/Features/details/views/layouts/details_mobile_layout.dart';
import 'package:ui_challenge/Features/details/views/layouts/details_tablet_layout.dart';

class CarDetailsView extends StatelessWidget {
  const CarDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth >= 800) {
              // Desktop Layout
              return const DetailsDesktopLayout();
            } else if (constraints.maxWidth >= 600) {
              // Tablet Layout
              return DetailsTabletLayout();
            } else {
              // Mobile Layout
              return DetailsMobileLayout();
            }
          },
        ),
      ),
    );
  }
}
