import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';

class BillingEditButton extends StatelessWidget {
  const BillingEditButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Row(
        children: [
          const Icon(
            Icons.edit,
            size: 14,
            color: AppDarkColors.greyColor,
          ),
          const Gap(5),
          Text(
            "Edit",
            style: AppStyles.medium12.copyWith(
              color: AppDarkColors.greyColor,
            ),
          ),
        ],
      ),
    );
  }
}
