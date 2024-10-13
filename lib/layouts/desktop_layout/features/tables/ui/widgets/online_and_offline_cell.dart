import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_dark_colors.dart';
import '../../../../../../core/utils/app_styles.dart';

class OnlineAndOffline extends StatelessWidget {
  const OnlineAndOffline({
    super.key,
    required this.cellWidth,
    required this.status,
  });

  final double cellWidth;
  final String status;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: status == 'Online'
            ? AppDarkColors.greenColor
            : AppDarkColors.greyColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(status,
          style: AppStyles.bold12(context)
              .copyWith(color: AppDarkColors.whiteColor)),
    );
  }
}
