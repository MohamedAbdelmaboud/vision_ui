import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../themes/app_dark_colors.dart';
import '../utils/app_styles.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
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
    );
  }
}
