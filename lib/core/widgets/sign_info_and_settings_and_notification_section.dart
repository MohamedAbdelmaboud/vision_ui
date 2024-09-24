import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../themes/app_dark_colors.dart';
import '../utils/app_styles.dart';

class SignInfoAndSettingsAndNotificationSection extends StatelessWidget {
  const SignInfoAndSettingsAndNotificationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ElevatedButton(
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.transparent),
            elevation: WidgetStateProperty.all(0),
            padding: WidgetStateProperty.all(
              const EdgeInsets.all(
                5,
              ),
            ),
          ),
          onPressed: () {},
          child: Row(
            children: [
              const Icon(
                Icons.person,
                size: 16,
                color: AppDarkColors.greyColor,
              ),
              const Gap(5),
              Text(
                "Signin",
                style: AppStyles.medium12.copyWith(
                  color: AppDarkColors.greyColor,
                ),
              ),
            ],
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
