import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/extensions/context_colors_extension.dart';
import '../../../../../../core/utils/app_styles.dart';

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
          style: AppStyles.medium12(context),
        ),
        const Gap(5),
        Text(
          transactionDate,
          style: AppStyles.medium12(context).copyWith(
            color: context.theme.subTitleColor.withOpacity(0.8),
          ),
        ),
      ],
    );
  }
}
