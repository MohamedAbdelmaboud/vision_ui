import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'billing_information_section.dart';
import 'transactions_information_section.dart';

class BillingAndTransactionSection extends StatelessWidget {
  const BillingAndTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(child: BillingInformationSection()),
        Gap(20),
        Expanded(child: TransactionsInformationSection()),
      ],
    );
  }
}
