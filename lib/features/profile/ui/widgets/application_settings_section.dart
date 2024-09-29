import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'platform_switch_and_text.dart';

class ApplicationSettingsSection extends StatelessWidget {
  const ApplicationSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "APPLICATION",
          style: AppStyles.regular10(context).copyWith(
            color: AppDarkColors.greyColor,
          ),
        ),
        const Gap(18),
        Column(
          children: [
            PlatformSwitchAndText(
              text: 'New launches and projects',
              value: false,
              // here is bool i remove it as it give me warning
              onToggle: (_) {},
            ),
            const Gap(15),
            PlatformSwitchAndText(
              text: 'Monthly product updates',
              value: false,
              // here is bool i remove it as it give me warning
              onToggle: (_) {},
            ),
            const Gap(15),
            PlatformSwitchAndText(
              text: 'Subscribe to newsletter',
              value: true,
              // here is bool i remove it as it give me warning
              onToggle: (_) {},
            ),
            const Gap(15),
            PlatformSwitchAndText(
              text: 'Receive mails weekly',
              value: true,
              // here is bool i remove it as it give me warning
              onToggle: (_) {},
            ),
          ],
        )
      ],
    );
  }
}
