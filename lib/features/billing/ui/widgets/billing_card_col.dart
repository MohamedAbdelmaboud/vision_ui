import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
      children: [
        Text(
          title,
          style: AppStyles.bold12,
        ),
        const Gap(3),
        Text(
          value,
          style: AppStyles.bold12,
        ),
      ],
    );
  }
}
