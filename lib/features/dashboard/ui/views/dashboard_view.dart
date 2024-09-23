import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/widgets/custom_drawer.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(
        children: [
          CustomDrawer(),
          Gap(24),
          Column(children: [
            Row(
              children: [
                
              ],
            )
          ])
        ],
      ),
    );
  }
}
