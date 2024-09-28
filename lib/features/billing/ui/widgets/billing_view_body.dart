import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:glass/glass.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';
import 'billing_card.dart';
import 'credit_balance_widget.dart';
import 'custom_button.dart';
import 'invoices_widget.dart';

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
                        BillingCard(),
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
        )
      ],
    );
  }
}

class PaymentMethodWidget extends StatelessWidget {
  const PaymentMethodWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 180,

      padding: const EdgeInsets.all(24),
      decoration: buildPaymentMethodDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'PaymentMethod',
                style: AppStyles.bold14,
              ),
              const Spacer(),
              const CustomButton(
                text: 'Add New Card',
              )
            ],
          ),
          const Gap(20),
          const Row(
            children: [
              PaymentMethodItem(
                cardIcon: Assets.assetsImagesMastercard,
                cardNumber: '7812 2139 0823 XXXX',
              ),
              Gap(24),
              PaymentMethodItem(
                cardIcon: Assets.assetsImagesVisa,
                cardNumber: '7812 2139 0823 XXXX',
              ),
            ],
          )
        ],
      ),
    );
  }

  BoxDecoration buildPaymentMethodDecoration() {
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

class PaymentMethodItem extends StatelessWidget {
  const PaymentMethodItem({
    super.key,
    required this.cardIcon,
    required this.cardNumber,
  });
  final String cardIcon;
  final String cardNumber;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 26),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SvgPicture.asset(
              cardIcon,
            ),
            const Gap(8),
            Text(
              cardNumber,
              style: AppStyles.regular12.copyWith(
                color: AppDarkColors.greyColor,
              ),
            ),
            const Spacer(),
            const Icon(
              Icons.edit,
              color: AppDarkColors.greyColor,
              size: 12,
            ),
          ],
        ),
      ).asGlass(
        clipBorderRadius: BorderRadius.circular(15),
        tintColor: AppDarkColors.greyColor.withOpacity(0.2),
      ),
    );
  }
}
