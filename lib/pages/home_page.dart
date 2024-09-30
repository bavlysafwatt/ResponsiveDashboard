import 'package:flutter/material.dart';
import 'package:responsive_dashboard/components/adaptive_layout.dart';
import 'package:responsive_dashboard/components/custom_drawer.dart';
import 'package:responsive_dashboard/components/desktop_layout.dart';
import 'package:responsive_dashboard/components/mobile_layout.dart';
import 'package:responsive_dashboard/components/tablet_layout.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF7F9FA),
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xfffafafa),
            )
          : null,
      drawer:
          MediaQuery.sizeOf(context).width < 800 ? const CustomDrawer() : null,
      body: AdaptiveLayout(
        mobileLayout: (context) => const MobileLayout(),
        tabletLayout: (context) => const TabletLayout(),
        desktopLayout: (context) => const DesktopLayout(),
      ),
    );
  }
}
