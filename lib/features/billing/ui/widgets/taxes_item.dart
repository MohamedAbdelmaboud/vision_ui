import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';

class TaxesItem extends StatelessWidget {
  const TaxesItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Assets.assetsImagesTaxes,
        ),
        const SizedBox(width: 10),
        Column(
          children: [
            const Text(
              'Bill & Taxes',
              style: TextStyle(
                color: AppDarkColors.whiteColor,
                fontSize: 14,
              ),
            ),
            const Gap(3),
            Text(
              'Today,16:36',
              style: AppStyles.regular12.copyWith(
                color: AppDarkColors.greyColor,
              ),
            ),
          ],
        ),
        const Spacer(),
        Text(
          '-\$154.50',
          style: AppStyles.bold12,
        )
      ],
    );
  }
}
