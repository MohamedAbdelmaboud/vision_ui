import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class EmployedCell extends StatelessWidget {
  const EmployedCell({
    super.key,
    required this.cellWidth,
    required this.employed,
  });

  final double cellWidth;
  final String employed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: cellWidth,
      child: Text(
        employed,
        style: AppStyles.medium12(context),
      ),
    );
  }
}
