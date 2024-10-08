import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class ProjectTableBudget extends StatelessWidget {
  const ProjectTableBudget({super.key, required this.budget});
  final String budget;
  @override
  Widget build(BuildContext context) {
    return Text(
      budget,
      style: AppStyles.bold12(context),
    );
  }
}
