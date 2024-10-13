import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/extensions/context_colors_extension.dart';
import '../../../../../../core/utils/app_styles.dart';

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
          style: AppStyles.bold14(context),
        ),
        const Spacer(),
        Icon(
          Icons.calendar_month,
          color: context.theme.subTitleColor,
          size: 10,
        ),
        const Gap(5),
        Text(
          "23 - 30 March 2020",
          style: AppStyles.medium12(context).copyWith(
            color: context.theme.subTitleColor.withOpacity(0.8),
          ),
        )
      ],
    );
  }
}
