import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';

class InvoicesItem extends StatelessWidget {
  const InvoicesItem({
    super.key,
    required this.code,
    required this.date,
    required this.price,
  });
  final String code;
  final String date;

  final String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom:8.0),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                date,
                style: AppStyles.medium14,
              ),
              const Gap(5),
              Text(
                code,
                style: AppStyles.regular12.copyWith(
                  color: AppDarkColors.greyColor,
                ),
              )
            ],
          ),
          const Spacer(),
          Text(
            '\$$price',
            style: AppStyles.regular12.copyWith(
              color: AppDarkColors.greyColor,
            ),
          ),
          const Gap(10),
          SvgPicture.asset(
            Assets.assetsImagesPdf,
          ),
          const Gap(3),
          Text(
            'PDF',
            style: AppStyles.regular12.copyWith(
              color: AppDarkColors.greyColor,
            ),
          )
        ],
      ),
    );
  }
}
