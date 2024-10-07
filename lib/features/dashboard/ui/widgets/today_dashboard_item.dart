import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/extensions/context_colors_extension.dart';
import '../../../../core/utils/app_styles.dart';
import '../../data/models/today_item_model.dart';
import 'build_common_decoration.dart';
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
      decoration: buildCommonDecoration(context),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.title,
                style: AppStyles.medium12(context).copyWith(
                  color: context.theme.subTitleColor,
                ),
              ),
              const Gap(3),
              TodayDashboardItemRichText(
                model: model,
              ),
            ],
          ),
          const Spacer(),
          DashboardItemIcon(
            icon: model.icon,
          )
        ],
      ),
    );
  }
}
