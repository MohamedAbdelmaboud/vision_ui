import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../data/models/today_item_model.dart';
import 'today_dashboard_item_icon.dart';
import 'today_dashboard_item_rich_text.dart';

class TodayDashboardItem extends StatelessWidget {
  const TodayDashboardItem({
    super.key,
    required this.model,
  });
  final TodayItemModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 20,
      ),
      decoration: buildDashboardDecoration(),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.title,
                style:
                    AppStyles.medium12.copyWith(color: AppDarkColors.greyColor),
              ),
              const Gap(3),
              TodayDashboardItemRichText(
                model: model,
              ),
            ],
          ),
          const Spacer(),
          TodayDashboardItemIcon(
            icon: model.icon,
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
