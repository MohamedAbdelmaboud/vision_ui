import 'package:flutter/material.dart';

import '../../../../../../core/extensions/context_colors_extension.dart';
import '../../../../../../core/utils/app_styles.dart';

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
            style: AppStyles.medium12(context),
          ),
          Text(
            department,
            style: AppStyles.regular10(context).copyWith(
              color: context.theme.subTitleColor.withOpacity(0.8),
            ),
          ),
        ],
      ),
    );
  }
}
