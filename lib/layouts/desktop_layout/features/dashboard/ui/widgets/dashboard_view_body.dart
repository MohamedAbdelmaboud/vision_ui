import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'active_users_widget.dart';
import 'dashboard_projects_table_widget.dart';
import 'order_over_view.dart';
import 'sales_over_view_widget.dart';
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
    return const Column(
      children: [
        Gap(12),
        TodayItemsList(),
        Gap(15),
        IntrinsicHeight(
          child: Row(
            children: [
              WelcomeContainer(),
              Gap(16),
              SatisfactionWidget(),
              Gap(16),
              DesktopTrackingWidget(),
            ],
          ),
        ),
        Gap(16),
        IntrinsicHeight(
          child: Row(
            children: [
              SalesOverViewWidget(),
              Gap(16),
              ActiveUsersWidget(),
            ],
          ),
        ),
        Gap(16),
        IntrinsicHeight(
          child: Row(
            children: [
              DashboardProjectsTableWidget(),
              Gap(16),
              OrderOverView(),
            ],
          ),
        ),
        Gap(16),
      ],
    );
  }
}
