import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/extensions/context_colors_extension.dart';
import '../../../../../../core/utils/app_styles.dart';
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
    return SizedBox(
      width: 280,
      child: Column(
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
            style: AppStyles.regular10(context).copyWith(
              color: context.theme.subTitleColor,
            ),
          ),
          const Gap(5),
          Text(
            projectName,
            style: AppStyles.bold18(context).copyWith(
              color: context.theme.subTitleColor,
            ),
          ),
          const Gap(10),
          Text(
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            projectDescription,
            style: AppStyles.regular12(context).copyWith(
              color: context.theme.subTitleColor,
            ),
          ),
          const Gap(10),
          const ProjectViewAllButton()
        ],
      ),
    );
  }
}
