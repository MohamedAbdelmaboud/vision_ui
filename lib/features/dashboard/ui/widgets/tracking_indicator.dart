import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:glass/glass.dart';

class TrackingIndicator extends StatelessWidget {
  const TrackingIndicator({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      clipBehavior: Clip.none,
      children: [
        Image.asset(
          Assets.assetsImagesIndicator,
          height: 150,
        ).asGlass(
          tintColor: const Color(0xFF06B88F),
          clipBorderRadius: BorderRadius.circular(85),
          tileMode: TileMode.mirror,
        ),
        //    Safety
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Safety',
              style: AppStyles.medium12.copyWith(
                color: AppDarkColors.greyColor,
              ),
            ),
            const Gap(5),
            Text(
              '9.3',
              style: AppStyles.bold28,
            ),
            const Gap(5),
            Text(
              'Total Score',
              style: AppStyles.medium12.copyWith(
                color: AppDarkColors.greyColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
