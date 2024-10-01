import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class CarInfoCircleContainerBody extends StatelessWidget {
  const CarInfoCircleContainerBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          Assets.assetsImagesPower,
        ),
        const Gap(5),
        Text(
          '68%',
          style: AppStyles.bold20(context),
        ),
        const Gap(5),
        Text(
          'Current Load',
          style: AppStyles.medium12(context).copyWith(
            color: AppDarkColors.greyColor,
          ),
        ),
      ],
    );
  }
}
