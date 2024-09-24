import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:glass/glass.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'dash_custom_container.dart';

class SatisfactionPercentage extends StatelessWidget {
  const SatisfactionPercentage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: -15,
      child: DashCustomContainer(
        child: Column(
          children: [
            Text(
              '55%',
              style: AppStyles.bold20,
            ),
            const Gap(3.5),
            Text(
              'Based on likes',
              style: AppStyles.regular12.copyWith(
                color: AppDarkColors.greyColor,
              ),
            ),
          ],
        ),
      ).asGlass(
        tintColor: AppDarkColors.activeIconColor,
        clipBorderRadius: const BorderRadius.vertical(
          bottom: Radius.circular(20),
        ),
      ),
    );
  }
}
