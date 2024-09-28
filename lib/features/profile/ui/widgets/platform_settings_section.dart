import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'account_settings_section.dart';
import 'application_settings_section.dart';

class PlatformSettingsSection extends StatelessWidget {
  const PlatformSettingsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppDarkColors.gradiantCardColor1.withOpacity(0.9),
            AppDarkColors.gradiantCardColor2.withOpacity(0.5),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Platform Settings",
              style: AppStyles.bold14,
            ),
            const Gap(25),
            const AccountSettingsSection(),
            const Gap(20),
            const ApplicationSettingsSection()
          ],
        ),
      ),
    );
  }
}
