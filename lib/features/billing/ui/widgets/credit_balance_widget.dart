import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import 'credit_balance_container.dart';
import 'taxes_item.dart';

class CreditBalanceWidget extends StatelessWidget {
  const CreditBalanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 240,
        padding: const EdgeInsets.all(24),
        decoration: buildBalanceDecoration(),
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

  BoxDecoration buildBalanceDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [
          AppDarkColors.gradiantTableColor1.withOpacity(0.7),
          AppDarkColors.gradiantTableColor1.withOpacity(0.7),
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ),
      borderRadius: BorderRadius.circular(15),
    );
  }
}
