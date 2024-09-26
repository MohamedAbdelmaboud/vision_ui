import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';

class TransactionNameAndDate extends StatelessWidget {
  const TransactionNameAndDate({
    super.key,
    required this.transactionName,
    required this.transactionDate,
  });
  final String transactionName;
  final String transactionDate;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          transactionName,
          style: AppStyles.medium12,
        ),
        const Gap(5),
        Text(
          transactionDate,
          style: AppStyles.medium12.copyWith(
            color: AppDarkColors.greyColor.withOpacity(0.8),
          ),
        ),
      ],
    );
  }
}
