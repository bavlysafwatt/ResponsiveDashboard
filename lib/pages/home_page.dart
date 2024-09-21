import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/adaptive_layout.dart';
import 'package:responsive_dashboard/components/desktop_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const SizedBox(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
