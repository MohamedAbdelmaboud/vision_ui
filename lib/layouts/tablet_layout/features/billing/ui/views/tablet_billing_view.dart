import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../desktop_layout/features/billing/ui/widgets/billing_and_transaction_section.dart';
import '../../../../../desktop_layout/features/billing/ui/widgets/billing_master_card.dart';
import '../../../../../desktop_layout/features/billing/ui/widgets/credit_balance_widget.dart';
import '../../../../../desktop_layout/features/billing/ui/widgets/payment_method_widget.dart';

class TabletBillingView extends StatelessWidget {
  const TabletBillingView({super.key});

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
                        Expanded(
                          child: BillingMasterCard(),
                        ),
                        Gap(24),
                        CreditBalanceWidget(),
                      ],
                    ),
                    Gap(24),
                    PaymentMethodWidget(),
                  ],
                ),
              ),
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
