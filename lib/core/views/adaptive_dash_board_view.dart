import 'adaptive_layout_widget.dart';
import '../../layouts/desktop_layout/dashboard_desktop_layout.dart';
import 'dashboard_mobile_layout.dart';
import '../../layouts/tablet_layout/dashboard_tablet_layout.dart';
import 'package:flutter/material.dart';

class AdaptiveDashBoardView extends StatelessWidget {
  const AdaptiveDashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => const DashboardMobileLayout(),
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
