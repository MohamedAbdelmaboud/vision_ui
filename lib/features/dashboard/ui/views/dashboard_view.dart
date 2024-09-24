import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/widgets/custom_drawer.dart';
import '../../../tables/ui/widgets/table_view_body.dart';
import '../widgets/dashboard_view_body.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              Assets.assetsImagesDashboardBackground,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: const Row(
          children: [
            CustomDrawer(),
            Gap(24),
           // DashboardViewBody(),
           TableViewBody()
          ],
        ),
      ),
    );
  }
}
