import 'package:flutter/material.dart';

import '../widgets/billing_and_transaction_section.dart';

class BillingView extends StatelessWidget {
  const BillingView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      child: Column(
        children: [
          BillingAndTransactionSection(),
        ],
      ),
    );
  }
}
