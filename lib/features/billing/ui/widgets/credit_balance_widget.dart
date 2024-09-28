import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'credit_balance_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'taxes_item.dart';

class CreditBalanceWidget extends StatelessWidget {
  const CreditBalanceWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: buildBalanceDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CreditBalanceContainer(),
            const Gap(16),
            Text(
              'NEWSET',
              style: AppStyles.medium10.copyWith(
                color: AppDarkColors.greyColor,
              ),
            ),
            const Gap(16),
            const TaxesItem(),
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
