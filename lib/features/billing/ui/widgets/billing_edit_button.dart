import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/extensions/context_colors_extension.dart';
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
          Icon(
            Icons.edit,
            size: 14,
            color: context.theme.subTitleColor,
          ),
          const Gap(5),
          Text(
            "Edit",
            style: AppStyles.medium12(context).copyWith(
              color: context.theme.subTitleColor,
            ),
          ),
        ],
      ),
    );
  }
}
