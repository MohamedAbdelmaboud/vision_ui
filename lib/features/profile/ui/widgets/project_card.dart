import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../../../../core/utils/app_styles.dart';
import 'project_view_all_button.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard(
      {super.key,
      required this.projectThumnail,
      required this.projectNumber,
      required this.projectName,
      required this.projectDescription});
  final String projectThumnail;
  final int projectNumber;
  final String projectName;
  final String projectDescription;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: Image.asset(
            fit: BoxFit.cover,
            projectThumnail,
            height: 120,
            width: 280,
          ),
        ),
        const Gap(15),
        Text(
          "Project #$projectNumber",
          style: AppStyles.regular10.copyWith(
            color: AppDarkColors.greyColor,
          ),
        ),
        const Gap(5),
        Text(
          projectName,
          style: AppStyles.bold18,
        ),
        const Gap(10),
        SizedBox(
          width: 250,
          child: Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            projectDescription,
            style: AppStyles.regular12.copyWith(
              color: AppDarkColors.greyColor,
            ),
          ),
        ),
        const Gap(10),
        const ProjectViewAllButton()
      ],
    );
  }
}
