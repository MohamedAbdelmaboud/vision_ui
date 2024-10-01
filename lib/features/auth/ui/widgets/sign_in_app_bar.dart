import 'package:flutter/material.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';
import '../../../../core/widgets/text_button.dart';
import 'sign_in_app_bar_middle.dart';

class SignInAppBar extends StatelessWidget {
  const SignInAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.6,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          gradient: LinearGradient(
            colors: [
              AppDarkColors.whiteColor.withOpacity(0.2),
              AppDarkColors.whiteColor.withOpacity(0.40),
            ],
            end: Alignment.centerLeft,
            begin: Alignment.centerRight,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "VISION UI FREE",
              style: AppStyles.medium12(context)
                  .copyWith(decoration: TextDecoration.none),
            ),
            const SignInAppBarMiddle(),
            CustomTextButton(
              buttonColor: AppDarkColors.activeIconColor,
              padingHorizental: 20,
              padingVeritical: 10,
              buttonText: "Free Download",
              onPressed: () {},
              style: AppStyles.medium10(context).copyWith(
                color: AppDarkColors.whiteColor,
              ),
              borderRadius: 20,
            ),
          ],
        ),
      ),
    );
  }
}
