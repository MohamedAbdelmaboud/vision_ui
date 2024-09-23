import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'today_items_list.dart';

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
          const Gap(23),
          Container(
            alignment: Alignment.centerLeft,
            height: 300,
            padding: const EdgeInsets.symmetric(
              vertical: 36,
              horizontal: 31,
            ),
            decoration: buildDashboardDecoration(),
            child: Column(
              children: [
                Text(
                  'Welcome back,',
                  style: AppStyles.medium14.copyWith(
                    color: AppDarkColors.greyColor,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  BoxDecoration buildDashboardDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      gradient: const LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Color(0xFF060B26),
          Color(0xFF1A1F37),
        ],
        stops: [0.0, 1.0],
      ),
    );
  }
}
