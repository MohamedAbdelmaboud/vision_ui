import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'active_users_widget.dart';
import 'order_over_view.dart';
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
    return const Expanded(
      child: Column(
        children: [
          Gap(12),
          TodayItemsList(),
          Gap(15),
          Row(
            children: [
              WelcomeContainer(),
              Gap(16),
              SatisfactionWidget(),
              Gap(16),
              TrackingWidget(),
            ],
          ),
          Gap(16),
          Row(
            children: [
              OrderOverView(), //TODO: Add Sales over view chart

              Gap(16),
              ActiveUsersWidget(),
            ],
          ),
          // Row(
          //   children: [
          //     Expanded(
          //       flex: 3,
          //       child: OrderOverView(), //TODO: Add OrderOverView Table
          //     ),
          //     Gap(16),
          //     Expanded(
          //       flex: 2,
          //       child: OrderOverView(),
          //     ),
          //   ],
          // )
        ],
      ),
    );
  }
}
