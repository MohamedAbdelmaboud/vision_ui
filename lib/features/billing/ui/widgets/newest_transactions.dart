import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/extensions/context_colors_extension.dart';
import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'transaction_card.dart';

class NewestTransactions extends StatelessWidget {
  const NewestTransactions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "NEWEST",
          style: AppStyles.medium10(context).copyWith(
            color: context.theme.subTitleColor.withOpacity(0.8),
          ),
        ),
        const Gap(12),
        const TransactionCard(
          transactionName: 'Netflix',
          transactionDate: '27 March 2020, at 12:30 PM',
          amount: r'-$2500',
          color: AppDarkColors.redColor,
          icon: Icons.arrow_downward_rounded,
          amountColor: AppDarkColors.redColor,
        ),
        const Gap(15),
        const TransactionCard(
          transactionName: 'Apple',
          transactionDate: '27 March 2020, at 12:30 PM',
          amount: r'+$2500',
          color: AppDarkColors.greenColor,
          icon: Icons.arrow_upward_rounded,
          amountColor: AppDarkColors.greenColor,
        ),
        const Gap(15),
      ],
    );
  }
}
