import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../extensions/context_colors_extension.dart';
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
          iconColor: context.theme.subTitleColor,
          padingHorizental: 15,
          padingVeritical: 5,
          style: AppStyles.bold12(context).copyWith(
            color: context.theme.subTitleColor,
          ),
        ),
        const Gap(5),
        Icon(
          Icons.settings,
          size: 16,
          color: context.theme.subTitleColor,
        ),
        const Gap(15),
        Icon(
          Icons.notifications,
          size: 16,
          color: context.theme.subTitleColor,
        )
      ],
    );
  }
}
