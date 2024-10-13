import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/extensions/context_colors_extension.dart';
import 'credit_balance_container.dart';
import 'taxes_item.dart';

class CreditBalanceWidget extends StatelessWidget {
  const CreditBalanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
      
        padding: const EdgeInsets.all(24),
        decoration: buildBalanceDecoration(context),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CreditBalanceContainer(),
            Gap(16),
            TaxesItem(),
          ],
        ),
      ),
    );
  }

  BoxDecoration buildBalanceDecoration(BuildContext context) {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: context.theme.gradientTableColors,
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ),
      borderRadius: BorderRadius.circular(15),
    );
  }
}
