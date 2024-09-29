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
          "Esraa Ehab",
          style: AppStyles.medium16(context),
        ),
        const Gap(4),
        Text(
          "Esraa Ehab@simmmple.com",
          style: AppStyles.regular12(context).copyWith(
            color: AppDarkColors.greyColor,
          ),
        ),
      ],
    );
  }
}
