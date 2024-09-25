import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class ActiveUsersTitle extends StatelessWidget {
  const ActiveUsersTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Active users',
          style: AppStyles.bold18,
        ),
        const Gap(6),
        Row(
          children: [
            SvgPicture.asset(
              Assets.assetsImagesDone,
            ),
            const Gap(5),
            Text.rich(TextSpan(children: [
              TextSpan(
                text: '(+23) ',
                style: AppStyles.bold14.copyWith(
                  color: AppDarkColors.greenColor,
                ),
              ),
              TextSpan(
                text: 'than last week',
                style: AppStyles.bold14.copyWith(
                  color: AppDarkColors.greyColor,
                ),
              )
            ])),
          ],
        )
      ],
    );
  }
}
