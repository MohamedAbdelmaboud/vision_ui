import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_images.dart';
import 'project_card.dart';

class ProjectsCardList extends StatelessWidget {
  const ProjectsCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ProjectCard(
          projectThumnail: Assets.assetsImagesModern,
          projectNumber: 1,
          projectName: 'Modern',
          projectDescription:
              'As Uber works through a huge amount of internal management turmoil.',
        ),
        Gap(25),
        ProjectCard(
          projectThumnail: Assets.assetsImagesScan,
          projectNumber: 2,
          projectName: 'Scandinavian',
          projectDescription:
              'Music is something that every person has his or her own specific opinion about.',
        ),
        Gap(25),
        ProjectCard(
          projectThumnail: Assets.assetsImagesMinimalist,
          projectNumber: 2,
          projectName: 'Minimalist',
          projectDescription:
              'Different people have different taste, and various types of music.',
        ),
        Gap(25),
        ProjectCard(
          projectThumnail: Assets.assetsImagesModern,
          projectNumber: 1,
          projectName: 'Modern',
          projectDescription:
              'As Uber works through a huge amount of internal management turmoil.',
        ),
      ],
    );
  }
}
