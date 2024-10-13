import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/extensions/context_colors_extension.dart';
import '../../../../../../core/themes/app_dark_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/widgets/text_button.dart';
import '../../../profile/ui/widgets/platform_switch_and_text.dart';
import 'check_account_section.dart';
import 'custom_text_field.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 420, left: 40, top: 80, bottom: 80),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 20),
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          border: Border.fromBorderSide(
            BorderSide(
                color: AppDarkColors.whiteColor.withOpacity(0.5), width: 1),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Welcome!",
              style: AppStyles.medium16(context)
                  .copyWith(decoration: TextDecoration.none),
            ),
            const Gap(5),
            Text(
              textAlign: TextAlign.center,
              "Use these awesome forms to login or create new\n account in your project for free.",
              style: AppStyles.regular10(context).copyWith(
                  decoration: TextDecoration.none,
                  color: context.theme.subTitleColor),
            ),
            const Gap(25),
            const CustomTextField(
              label: 'Name',
              hint: 'Your full name',
            ),
            const Gap(15),
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
                  text: "Already have an account?",
                  textButton: " Sign in",
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
