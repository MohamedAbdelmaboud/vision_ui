import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'billing_and_transaction_section.dart';
import 'billing_master_card.dart';
import 'credit_balance_widget.dart';
import 'invoices_widget.dart';
import 'payment_method_widget.dart';

class BillingViewBody extends StatelessWidget {
  const BillingViewBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        IntrinsicHeight(
          child: Row(
            children: [
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Row(
                      children: [
                        BillingMasterCard(),
                        Gap(24),
                        CreditBalanceWidget(),
                      ],
                    ),
                    Gap(24),
                    PaymentMethodWidget()
                  ],
                ),
              ),
              Gap(24),
              InvoicesWidget(),
            ],
          ),
        ),
        Gap(24),
        BillingAndTransactionSection(),
        Gap(24),
      ],
    );
  }
}
