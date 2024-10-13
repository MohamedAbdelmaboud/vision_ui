import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/extensions/context_colors_extension.dart';
import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_styles.dart';

class ProjectsTableTitle extends StatelessWidget {
  const ProjectsTableTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Projects',
          style: AppStyles.bold20(context),
        ),
        const Gap(3),
        Row(
          children: [
            SvgPicture.asset(
              Assets.assetsImagesDone,
            ),
            const Gap(5),
            Text(
              '30 done this month',
              style: AppStyles.bold14(context).copyWith(
                color: context.theme.subTitleColor.withOpacity(0.6),
              ),
            )
          ],
        )
      ],
    );
  }
}
