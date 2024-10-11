import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/extensions/context_colors_extension.dart';
import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/text_button.dart';
import '../../../profile/ui/widgets/platform_switch_and_text.dart';
import 'check_account_section.dart';
import 'custom_text_field.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 450, left: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Nice to see you!",
            style: AppStyles.medium16(context)
                .copyWith(decoration: TextDecoration.none),
          ),
          const Gap(5),
          Text(
            "Enter your email and password to sign in",
            style: AppStyles.regular10(context).copyWith(
                decoration: TextDecoration.none,
                color: context.theme.subTitleColor),
          ),
          const Gap(25),
          const CustomTextField(
            label: 'Email',
            hint: 'Your email address',
          ),
          const Gap(15),
          const CustomTextField(
            label: "Password",
            hint: "Your password",
          ),
          const Gap(15),
          PlatformSwitchAndText(
            text: "Remember me ",
            value: true,
            onToggle: (p0) {},
          ),
          const Gap(25),
          Column(
            children: [
              CustomTextButton(
                buttonColor: AppDarkColors.activeIconColor,
                padingHorizental: 120,
                padingVeritical: 20,
                buttonText: "SIGN IN",
                onPressed: () {},
                style: AppStyles.bold10(context),
                borderRadius: 12,
              ),
              const Gap(15),
              const CheckAccountSection(
                text: "Don't have an account?",
                textButton: "Sign In",
              ),
            ],
          ),
        ],
      ),
    );
  }
}
