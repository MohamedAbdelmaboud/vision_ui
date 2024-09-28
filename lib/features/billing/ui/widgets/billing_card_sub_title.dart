import 'package:flutter/material.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';

class BillingCardSubTitle extends StatelessWidget {
  const BillingCardSubTitle(
      {super.key,
      required this.companyName,
      required this.emailAddress,
      required this.vatNum});
  final String companyName;
  final String emailAddress;
  final String vatNum;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          companyName,
          style: AppStyles.regular9
              .copyWith(color: AppDarkColors.greyColor.withOpacity(0.8)),
        ),
        Text(
          emailAddress,
          style: AppStyles.regular9
              .copyWith(color: AppDarkColors.greyColor.withOpacity(0.8)),
        ),
        Text(
          vatNum,
          style: AppStyles.regular9
              .copyWith(color: AppDarkColors.greyColor.withOpacity(0.8)),
        )
      ],
    );
  }
}
