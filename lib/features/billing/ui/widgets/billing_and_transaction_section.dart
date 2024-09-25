import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'billing_information.dart';
import 'transactions_information.dart';

class BillingAndTransactionSection extends StatelessWidget {
  const BillingAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: BillingInformation()),
        Gap(10),
        Expanded(child: TransactionsInformation()),
      ],
    );
  }
}
