import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_styles.dart';

class TransactionAmount extends StatelessWidget {
  const TransactionAmount({
    super.key,
    required this.amount,
    required this.amountColor,
  });
  final String amount;
  final Color amountColor;
  @override
  Widget build(BuildContext context) {
    return Text(
      amount,
      style: AppStyles.medium12(context).copyWith(
        color: amountColor,
      ),
    );
  }
}
