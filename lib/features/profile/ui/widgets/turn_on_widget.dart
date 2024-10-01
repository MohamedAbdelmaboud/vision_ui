import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_styles.dart';

class TurnOnWidget extends StatelessWidget {
  const TurnOnWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Turn on your car',
          style: (AppStyles.medium12(context)),
        ),
        const Gap(10),
        const Icon(
          Icons.arrow_forward,
          size: 14,
          color: Colors.white,
        ),
      ],
    );
  }
}
