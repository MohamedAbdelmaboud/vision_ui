import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';

class UserNameAndEmail extends StatelessWidget {
  const UserNameAndEmail({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Mark Johnson",
          style: AppStyles.medium16,
        ),
        const Gap(4),
        Text(
          "mark@simmmple.com",
          style: AppStyles.regular14.copyWith(
            color: AppDarkColors.greyColor,
          ),
        ),
      ],
    );
  }
}
