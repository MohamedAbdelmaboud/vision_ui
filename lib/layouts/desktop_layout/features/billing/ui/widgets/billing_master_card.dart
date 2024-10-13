import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utils/app_images.dart';
import 'billing_card_col.dart';
import 'billing_master_num.dart';
import 'billing_master_upper_row.dart';

class BillingMasterCard extends StatelessWidget {
  const BillingMasterCard({super.key});

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
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BillingMasterUpperRow(),
          Gap(70),
          BillingMasterNum(),
          Gap(10),
          Row(
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
