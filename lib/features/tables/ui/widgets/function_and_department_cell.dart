import 'package:flutter/material.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';

class FunctionAndDepartment extends StatelessWidget {
  const FunctionAndDepartment({
    super.key,
    required this.cellWidth,
    required this.function,
    required this.department,
  });

  final double cellWidth;
  final String function;
  final String department;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cellWidth,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            function,
            style: AppStyles.medium12,
          ),
          Text(
            department,
            style: AppStyles.regular10.copyWith(
              color: AppDarkColors.greyColor.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
