import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../core/extensions/context_colors_extension.dart';
import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';

class TaxesItemDetails extends StatelessWidget {
  const TaxesItemDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(
          Assets.assetsImagesTaxes,
        ),
        const SizedBox(width: 10),
        Column(
          children: [
            const Text(
              'Bill & Taxes',
              style: TextStyle(
                color: AppDarkColors.whiteColor,
                fontSize: 14,
              ),
            ),
            const Gap(3),
            Text(
              'Today,16:36',
              style: AppStyles.regular12(context).copyWith(
                color: context.theme.subTitleColor.withOpacity(0.6),
              ),
            ),
          ],
        ),
        const Spacer(),
        Text(
          '-\$154.50',
          style: AppStyles.bold12(context),
        )
      ],
    );
  }
}
