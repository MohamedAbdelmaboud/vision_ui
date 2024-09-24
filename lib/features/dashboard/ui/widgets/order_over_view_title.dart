import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';

class OrderOverViewTitle extends StatelessWidget {
  const OrderOverViewTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Orders overview',
          style: AppStyles.bold18,
        ),
        const Gap(6),
        Row(
          children: [
            SvgPicture.asset(
              Assets.assetsImagesDone,
            ),
            const Gap(5),
            Text(
              '+30% this month',
              style: AppStyles.bold14.copyWith(
                color: AppDarkColors.greyColor,
              ),
            ),
          ],
        )
      ],
    );
  }
}
