import 'package:flutter/material.dart';

import '../../layouts/desktop_layout/dashboard_desktop_layout.dart';
import '../../layouts/tablet_layout/dashboard_tablet_layout.dart';
import 'adaptive_layout_widget.dart';

class AdaptiveDashBoardView extends StatelessWidget {
  const AdaptiveDashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        tabletLayout: (context) => const DashboardTabletLayout(),
        desktopLayout: (context) => const DashboardDesktopLayout(),
        mobileLayout: (context) => const DashboardDesktopLayout(),
      ),
    );
  }
}
