import 'package:flutter/material.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'custom_project_table.dart';

class ProjectTable extends StatelessWidget {
  const ProjectTable({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomProjectTable(
        labelColum1: "COMPANIES",
        labelColum2: "BUDGET",
        labelColum3: "STATUS",
        labelColum4: "COMPLETION",
        style: AppStyles.regular10.copyWith(
          color: AppDarkColors.greyColor.withOpacity(0.8),
        ),
        rows: const []);
  }
}
