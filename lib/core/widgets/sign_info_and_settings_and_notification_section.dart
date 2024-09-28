import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../themes/app_dark_colors.dart';
import '../utils/app_styles.dart';
import 'icon_text_button.dart';

class SignInfoAndSettingsAndNotificationSection extends StatelessWidget {
  const SignInfoAndSettingsAndNotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconTextButton(
          onPressed: () {},
          buttonColor: Colors.transparent,
          buttonText: "Sign In",
          icon: Icons.person,
          iconColor: AppDarkColors.greyColor,
          padingHorizental: 5,
          padingVeritical: 5,
          style: AppStyles.medium12.copyWith(
            color: AppDarkColors.greyColor,
          ),
        ),
        const Gap(5),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.settings,
            size: 16,
            color: AppDarkColors.greyColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.notifications,
            size: 16,
            color: AppDarkColors.greyColor,
          ),
        )
      ],
    );
  }
}
