import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'billing_card.dart';
import 'credit_balance_widget.dart';
import 'invoices_widget.dart';

class BillingViewBody extends StatelessWidget {
  const BillingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            BillingCard(),
            Gap(24),
            CreditBalanceWidget(),
            Gap(24),
            InvoicesWidget(),
          ],
        )
      ],
    );
  }
}
