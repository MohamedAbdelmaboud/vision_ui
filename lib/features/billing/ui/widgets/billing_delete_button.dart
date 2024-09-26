import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';

class BillingDeleteButton extends StatelessWidget {
  const BillingDeleteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Row(
        children: [
          const Icon(
            Icons.delete,
            size: 14,
            color: AppDarkColors.redColor,
          ),
          const Gap(5),
          Text(
            "Delete",
            style: AppStyles.medium12.copyWith(
              color: AppDarkColors.redColor,
            ),
          ),
        ],
      ),
    );
  }
}
