import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/extensions/context_colors_extension.dart';
import '../../../../core/utils/app_styles.dart';

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
            color: context.theme.subTitleColor,
          ),
        ),
      ],
    );
  }
}
