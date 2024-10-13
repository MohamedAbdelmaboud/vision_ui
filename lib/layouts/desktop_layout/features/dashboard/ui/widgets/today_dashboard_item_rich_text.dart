import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_dark_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../data/models/today_item_model.dart';

class TodayDashboardItemRichText extends StatelessWidget {
  const TodayDashboardItemRichText({
    super.key,
    required this.model,
  });
  final TodayItemModel model;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: model.amount,
            style: AppStyles.bold18(context),
          
          ),
          const TextSpan(
            text: ' ',
          ),
          TextSpan(
            text: model.percentageChange,
            style: AppStyles.bold12(context).copyWith(
              color: model.percentageChange.contains('-')
                  ? Colors.red
                  : AppDarkColors.greenColor,
            ),
          ),
        ],
      ),
    );
  }
}
