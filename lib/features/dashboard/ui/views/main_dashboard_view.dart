import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/widgets/custom_drawer.dart';
import '../../../../core/widgets/custom_search_bar.dart';
import '../../../tables/ui/views/tables_view_desktop.dart';

class MainDashboardView extends StatelessWidget {
  const MainDashboardView({super.key});

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
            Expanded(
              child: Column(
                children: [
                  CustomSearchBar(),
                  Gap(16),
                  TablesView(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
