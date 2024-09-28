import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';
import 'billing_card_col.dart';

class BillingCard extends StatelessWidget {
  const BillingCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240,
      width: 416,
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: const DecorationImage(
          image: AssetImage(
            Assets.assetsImagesCardBackground,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Vision UI',
                style: AppStyles.bold14,
              ),
              const Spacer(),
              SvgPicture.asset(
                Assets.assetsImagesCardIcon,
                height: 18,
              ),
            ],
          ),
          const Gap(70),
          Text(
            '7812 2139 0823 XXXX',
            style: AppStyles.bold14,
          ),
          const Gap(10),
          const Row(
            children: [
              BillingCardCol(
                title: 'VALID THRU',
                value: '05/24',
              ),
              Gap(40),
              BillingCardCol(
                title: 'CVV',
                value: '09X',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
