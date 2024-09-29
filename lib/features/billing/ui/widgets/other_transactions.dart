import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'transaction_card.dart';

class OtherTransactions extends StatelessWidget {
  const OtherTransactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "YESTERDAY",
          style: AppStyles.medium10(context).copyWith(
            color: AppDarkColors.greyColor.withOpacity(0.8),
          ),
        ),
        const Gap(12),
        const TransactionCard(
          transactionName: 'Stripe',
          transactionDate: '26 March 2020, at 13:45 PM',
          amount: r'+$800',
          color: AppDarkColors.greenColor,
          icon: Icons.arrow_upward_rounded,
          amountColor: AppDarkColors.greenColor,
        ),
        const Gap(15),
        const TransactionCard(
          transactionName: 'HubSpot',
          transactionDate: '26 March 2020, at 12:30 PM',
          amount: r'+$1700',
          color: AppDarkColors.greenColor,
          icon: Icons.arrow_upward_rounded,
          amountColor: AppDarkColors.greenColor,
        ),
        const Gap(15),
        TransactionCard(
          transactionName: 'Webflow',
          transactionDate: '26 March 2020, at 05:00 AM',
          amount: r'Pending',
          color: AppDarkColors.greyColor.withOpacity(0.8),
          icon: Icons.warning_amber,
          amountColor: AppDarkColors.greyColor.withOpacity(0.8),
        ),
        const Gap(15),
        TransactionCard(
          transactionName: 'Microsoft',
          transactionDate: '25 March 2020, at 16:30 PM',
          amount: r'-$987',
          color: AppDarkColors.redColor,
          icon: Icons.arrow_downward_rounded,
          amountColor: AppDarkColors.greyColor.withOpacity(0.8),
        ),
        const Gap(15),
      ],
    );
  }
}
