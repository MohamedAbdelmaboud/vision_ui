import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';

class TransactionSectionHeader extends StatelessWidget {
  const TransactionSectionHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Your Transactions",
          style: AppStyles.bold14,
        ),
        const Spacer(),
        const Icon(
          Icons.calendar_month,
          color: AppDarkColors.whiteColor,
          size: 10,
        ),
        const Gap(5),
        Text(
          "23 - 30 March 2020",
          style: AppStyles.medium12.copyWith(
            color: AppDarkColors.greyColor.withOpacity(0.8),
          ),
        )
      ],
    );
  }
}
