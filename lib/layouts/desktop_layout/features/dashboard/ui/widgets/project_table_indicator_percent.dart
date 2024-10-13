import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utils/app_styles.dart';
import 'project_table_indicator.dart';

class ProjectTableIndicatorPercent extends StatelessWidget {
  const ProjectTableIndicatorPercent({
    super.key,
    required this.percent,
    required this.percentText,
  });
  final double percent;
  final String percentText;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          percentText,
          style: AppStyles.bold12(context),
        
        ),
        const Gap(5),
        ProjectTableIndicator(
          percent: percent,
        ),
      ],
    );
  }
}
