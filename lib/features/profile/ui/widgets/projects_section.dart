import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/extensions/context_colors_extension.dart';
import '../../../../core/utils/app_styles.dart';
import 'projects_card_list.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      decoration: buildProjectSectionDecoration(context),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Projects",
              style: AppStyles.bold16(context).copyWith(
                color: context.theme.subTitleColor,
              ),
            ),
            const Gap(15),
            Text(
              "Architects design houses",
              style: AppStyles.medium12(context).copyWith(
                color: context.theme.subTitleColor,
              ),
            ),
            const Gap(15),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ProjectsCardList(),
            )
          ],
        ),
      ),
    );
  }

  BoxDecoration buildProjectSectionDecoration(BuildContext context) {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: context.theme.gradientTableColors,
        // ignore color
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ),
      borderRadius: BorderRadius.circular(15),
    );
  }
}
