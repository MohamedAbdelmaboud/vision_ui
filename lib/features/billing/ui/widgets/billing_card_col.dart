import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_styles.dart';

class BillingCardCol extends StatelessWidget {
  const BillingCardCol({
    super.key,
    required this.title,
    required this.value,
  });
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.bold12(context),
        ),
        const Gap(3),
        Text(
          value,
          style: AppStyles.bold12(context),
        ),
      ],
    );
  }
}
