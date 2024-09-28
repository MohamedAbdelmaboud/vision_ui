import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';

class CarInfoTitle extends StatelessWidget {
  const CarInfoTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Car Informations',
          style: AppStyles.bold14,
        ),
        const Gap(5),
        Text(
          'Hello, Abdelmaboud! Your Car is ready.',
          style: AppStyles.medium12.copyWith(
            color: AppDarkColors.greyColor,
          ),
        ),
      ],
    );
  }
}
