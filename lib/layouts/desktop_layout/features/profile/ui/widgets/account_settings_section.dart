import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/themes/app_dark_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import 'platform_switch_and_text.dart';

class AccountSettingsSection extends StatelessWidget {
  const AccountSettingsSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "ACCOUNT",
          style: AppStyles.regular10(context).copyWith(
            color: AppDarkColors.greyColor,
          ),
        ),
        const Gap(18),
        Column(
          children: [
            PlatformSwitchAndText(
              text: 'Email me when someone follows me',
              value: true,
              // here is bool i remove it as it give me warning
              onToggle: (_) {},
            ),
            const Gap(15),
            PlatformSwitchAndText(
              text: 'Email me when someone answers to...',
              value: false,
              // here is bool i remove it as it give me warning
              onToggle: (_) {},
            ),
            const Gap(15),
            PlatformSwitchAndText(
              text: 'Email me when someone mentions me',
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
