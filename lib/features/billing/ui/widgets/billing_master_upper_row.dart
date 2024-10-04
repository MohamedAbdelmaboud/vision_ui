import '../../../../core/utils/app_images.dart';
import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BillingMasterUpperRow extends StatelessWidget {
  const BillingMasterUpperRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Vision UI',
          style: AppStyles.bold14(context),
        ),
        const Spacer(),
        SvgPicture.asset(
          Assets.assetsImagesCardIcon,
          height: 18,
        ),
      ],
    );
  }
}
