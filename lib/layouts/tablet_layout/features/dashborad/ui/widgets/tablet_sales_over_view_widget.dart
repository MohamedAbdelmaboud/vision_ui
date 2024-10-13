import '../../../../../desktop_layout/features/dashboard/ui/widgets/balance_history_chart.dart';
import '../../../../../desktop_layout/features/dashboard/ui/widgets/build_common_decoration.dart';
import '../../../../../desktop_layout/features/dashboard/ui/widgets/sales_over_view_title.dart';
import 'package:flutter/material.dart';

class TabletSalesOverViewWidget extends StatelessWidget {
  const TabletSalesOverViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      padding: const EdgeInsets.all(16),
      decoration: buildCommonDecoration(context),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SalesOverViewTitle(),
          BalanceHistoryChart(),
        ],
      ),
    );
  }
}
