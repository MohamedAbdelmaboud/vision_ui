import '../../../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class RecordRow extends StatelessWidget {
  const RecordRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Tap to record',
          style: AppStyles.medium12(context),
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
