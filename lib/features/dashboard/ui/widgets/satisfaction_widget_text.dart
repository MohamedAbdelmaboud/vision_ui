import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SatisfactionWidgetText extends StatelessWidget {
  const SatisfactionWidgetText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Satisfaction Rate',
          style: AppStyles.bold16(context),
        ),
        const Gap(3.5),
        Text(
          'From all projects',
          style: AppStyles.medium12(context).copyWith(
            color: AppDarkColors.greyColor,
          ),
        ),
      ],
    );
  }
}
