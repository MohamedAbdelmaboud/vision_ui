import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

class SalesOverViewTitle extends StatelessWidget {
  const SalesOverViewTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
        Text(
          'Sales overview',
          style: AppStyles.bold18(context),
        ),
        const Gap(6),
        Row(
          children: [
            SvgPicture.asset(
              Assets.assetsImagesDone,
            ),
            const Gap(5),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(
                    text: '(+5) more ',
                    style: AppStyles.bold14(context).copyWith(
                      color: AppDarkColors.greenColor,
                    ),
                  ),
                  TextSpan(
                    text: 'in 2024',
                    style: AppStyles.bold14(context).copyWith(
                      color: AppDarkColors.greyColor,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        const Gap(12),
      ],
    );
  }
}
