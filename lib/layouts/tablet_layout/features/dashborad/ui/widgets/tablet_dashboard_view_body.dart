import '../../../../../desktop_layout/features/dashboard/ui/widgets/active_users_widget.dart';
import '../../../../../desktop_layout/features/dashboard/ui/widgets/order_over_view.dart';
import '../../../../../desktop_layout/features/dashboard/ui/widgets/satisfaction_widget.dart';
import '../../../../../desktop_layout/features/dashboard/ui/widgets/today_items_list.dart';
import '../../../../../desktop_layout/features/dashboard/ui/widgets/welcome_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'tablet_projects_table_widget.dart';
import 'tablet_sales_over_view_widget.dart';
import 'tablet_tracking_widget.dart';

class TabletDashboardViewBody extends StatelessWidget {
  const TabletDashboardViewBody({
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
            ],
          ),
        ),
        Gap(16),
        TabletTrackingWidget(),
        Gap(16),
        TabletSalesOverViewWidget(),
        Gap(16),
        IntrinsicHeight(
          child: TabletProjectsTableWidget(),
        ),
        Gap(16),
        IntrinsicHeight(
          child: Row(
            children: [
              ActiveUsersWidget(),
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
