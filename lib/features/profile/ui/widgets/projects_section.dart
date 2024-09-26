import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'projects_card_list.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppDarkColors.gradiantCardColor1.withOpacity(0.9),
            AppDarkColors.gradiantCardColor2.withOpacity(0.5),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Projects",
              style: AppStyles.bold14,
            ),
            const Gap(15),
            Text(
              "Architects design houses",
              style: AppStyles.medium12.copyWith(
                color: AppDarkColors.greyColor,
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
}
