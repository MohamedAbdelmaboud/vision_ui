import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_dark_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/widgets/icon_text_button.dart';
import '../views/sign_up_view.dart';

class SignInAppBarMiddle extends StatelessWidget {
  const SignInAppBarMiddle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconTextButton(
          buttonColor: Colors.transparent,
          padingHorizental: 10,
          padingVeritical: 10,
          icon: Icons.dashboard_customize_rounded,
          iconColor: AppDarkColors.whiteColor,
          buttonText: "DASHBOARD",
          onPressed: () {
            Navigator.pop(context);
          },
          style: AppStyles.medium10(context).copyWith(
            color: AppDarkColors.whiteColor,
          ),
        ),
        IconTextButton(
          buttonColor: Colors.transparent,
          padingHorizental: 10,
          padingVeritical: 10,
          icon: Icons.person_2_rounded,
          iconColor: AppDarkColors.whiteColor,
          buttonText: "PROFILE",
          onPressed: () {},
          style: AppStyles.medium10(context).copyWith(
            color: AppDarkColors.whiteColor,
          ),
        ),
        IconTextButton(
          buttonColor: Colors.transparent,
          padingHorizental: 10,
          padingVeritical: 10,
          icon: Icons.person_pin,
          iconColor: AppDarkColors.whiteColor,
          buttonText: "SIGN UP",
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SignUpView(),
              ),
            );
          },
          style: AppStyles.medium10(context).copyWith(
            color: AppDarkColors.whiteColor,
          ),
        ),
        IconTextButton(
          buttonColor: Colors.transparent,
          padingHorizental: 10,
          padingVeritical: 10,
          icon: Icons.login_rounded,
          iconColor: AppDarkColors.whiteColor,
          buttonText: "SIGN IN",
          onPressed: () {},
          style: AppStyles.medium10(context).copyWith(
            color: AppDarkColors.whiteColor,
          ),
        ),
      ],
    );
  }
}
