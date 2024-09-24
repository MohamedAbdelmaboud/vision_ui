import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../themes/app_dark_colors.dart';
import 'sign_in_button.dart';

class SignInfoAndSettingsAndNotificationSection extends StatelessWidget {
  const SignInfoAndSettingsAndNotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SignInButton(),
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
