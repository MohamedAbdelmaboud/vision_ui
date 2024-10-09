import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/extensions/context_colors_extension.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';

class CarInfoTitle extends StatelessWidget {
  const CarInfoTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.assetsImagesBmw,
          height: 100,
        ),
        const Gap(20),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Car Informations',
              style: AppStyles.bold14(context),
            ),
            const Gap(5),
            Text(
              'Hello, Abdelmaboud! Your Car is ready.',
              style: AppStyles.medium12(context).copyWith(
                color: context.theme.subTitleColor,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
