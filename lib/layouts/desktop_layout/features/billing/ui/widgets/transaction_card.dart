import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'increase_and_decrease_and_pending_container.dart';
import 'transaction_amount.dart';
import 'transaction_name_and_date.dart';

class TransactionCard extends StatelessWidget {
  const TransactionCard({
    super.key,
    required this.transactionName,
    required this.transactionDate,
    required this.amount,
    required this.color,
    required this.icon,
    required this.amountColor,
  });
  final String transactionName;
  final String transactionDate;
  final String amount;
  final Color color;
  final IconData icon;
  final Color amountColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IncreaseAndDecreaseAndPendingContainer(
          icon: icon,
          color: color,
        ),
        const Gap(8),
        TransactionNameAndDate(
          transactionName: transactionName,
          transactionDate: transactionDate,
        ),
        const Spacer(),
        TransactionAmount(
          amount: amount,
          amountColor: amountColor,
        )
      ],
    );
  }
}
