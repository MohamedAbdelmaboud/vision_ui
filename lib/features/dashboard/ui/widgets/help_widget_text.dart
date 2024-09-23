import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HelpWidgetText extends StatelessWidget {
  const HelpWidgetText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Need Help?',
          style: AppStyles.bold14,
        ),
        const Gap(3.5),
        Text(
          'Please check our docs',
          style: AppStyles.medium14,
        ),
      ],
    );
  }
}
