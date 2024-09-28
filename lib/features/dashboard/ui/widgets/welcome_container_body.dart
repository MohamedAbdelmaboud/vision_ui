import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'record_row.dart';

class WelcomeContainerBody extends StatelessWidget {
  const WelcomeContainerBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Welcome back,',
          style: AppStyles.medium14.copyWith(
            color: AppDarkColors.greyColor,
          ),
        ),
        const Gap(10),
        Text(
          'Mohamed Abdelmaboud 🦈💙',
          style: AppStyles.bold16,
        ),
        const Gap(10),
        Text(
          'Glad to see you again!\nAsk me anything.',
          style: AppStyles.medium14.copyWith(
            color: AppDarkColors.greyColor,
          ),
        ),
        const Spacer(),
        const RecordRow()
      ],
    );
  }
}
