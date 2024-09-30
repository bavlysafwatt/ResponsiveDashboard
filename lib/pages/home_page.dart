import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/adaptive_layout.dart';
import 'package:responsive_dashboard/components/desktop_layout.dart';
import 'package:responsive_dashboard/components/tablet_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => const SizedBox(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
