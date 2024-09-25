import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'active_users_widget.dart';
import 'balance_history_chart.dart';
import 'build_common_decoration.dart';
import 'sales_over_view_title.dart';
import 'today_items_list.dart';

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
          // Row(
          //   children: [
          //     WelcomeContainer(),
          //     Gap(16),
          //     SatisfactionWidget(),
          //     Gap(16),
          //     TrackingWidget(),
          //   ],
          // ),
          Gap(16),
          Row(
            children: [
              SalesOverViewWidget(), //TODO: Add Sales over view chart

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

class SalesOverViewWidget extends StatelessWidget {
  const SalesOverViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 3,
        child: Container(
          height: 440,
          padding: const EdgeInsets.all(16),
          decoration: buildCommonDecoration(),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SalesOverViewTitle(),
              BalanceHistoryChart(),
            ],
          ),
        ));
  }
}
