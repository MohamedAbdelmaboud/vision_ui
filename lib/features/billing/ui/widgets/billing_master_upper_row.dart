import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/app_images.dart';

class BillingMasterUpperRow extends StatelessWidget {
  const BillingMasterUpperRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          'Vision UI',
          //TODO :
          //style: AppStyles.bold14,
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
