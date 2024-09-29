import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';
import 'custom_button.dart';
import 'payment_method_item.dart';

class PaymentMethodWidget extends StatelessWidget {
  const PaymentMethodWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: buildPaymentMethodDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'PaymentMethod',
                style: (AppStyles.bold14(context)),
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
