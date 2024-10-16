import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../layouts/desktop_layout/features/auth/ui/views/sign_in_view.dart';
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
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignInView(),
              ),
            );
          },
          buttonColor: Colors.transparent,
          buttonText: "Sign In",
          icon: Icons.person,
          iconColor: context.theme.subTitleColor,
          padingHorizental: 10,
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
