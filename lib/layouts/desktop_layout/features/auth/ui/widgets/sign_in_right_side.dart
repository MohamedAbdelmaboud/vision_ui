import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/themes/app_dark_colors.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_styles.dart';

class SignInLeftSide extends StatelessWidget {
  const SignInLeftSide({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(
            Assets.assetsImagesSignInBackground,
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "INSPIRED BY THE FUTURE:",
            style: AppStyles.medium12(context).copyWith(
                color: AppDarkColors.whiteColor,
                decoration: TextDecoration.none),
          ),
          const Gap(5),
          Text(
            "THE VISION UI DASHBOARD",
            style: AppStyles.medium24(context).copyWith(
                color: AppDarkColors.whiteColor,
                decoration: TextDecoration.none),
          ),
        ],
      ),
    );
  }
}
