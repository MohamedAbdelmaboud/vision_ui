import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/extensions/context_colors_extension.dart';
import '../../../../core/utils/app_styles.dart';

class CarInfoItemText extends StatelessWidget {
  const CarInfoItemText({
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
          style: AppStyles.medium12(context).copyWith(
            color: context.theme.subTitleColor,
          ),
        ),
        const Gap(5),
        Text(
          value,
          style: AppStyles.bold14(context),
        ),
      ],
    );
  }
}
