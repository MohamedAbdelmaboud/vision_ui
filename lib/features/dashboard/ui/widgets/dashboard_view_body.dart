import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'build_common_decoration.dart';
import 'satisfaction_widget.dart';
import 'today_items_list.dart';
import 'tracking_widget.dart';
import 'welcome_container.dart';

class DashboardViewBody extends StatelessWidget {
  const DashboardViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const Gap(12),
          const TodayItemsList(),
          const Gap(15),
          const Row(
            children: [
              WelcomeContainer(),
              Gap(16),
              SatisfactionWidget(),
              Gap(16),
              TrackingWidget(),
            ],
          ),
          Row(
            children: [
              Container(
                height: 400,
                decoration: buildCommonDecoration(),
                child: const Text('Graph goes here'),
              ),
              const Gap(16),
            ],
          )
        ],
      ),
    );
  }
}
