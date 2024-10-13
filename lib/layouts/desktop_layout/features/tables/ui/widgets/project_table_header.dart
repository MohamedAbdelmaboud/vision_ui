import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/utils/app_images.dart';
import '../../../../../../core/utils/app_styles.dart';

class ProjectTableHeader extends StatelessWidget {
  const ProjectTableHeader({
    super.key,
    required this.title,
  });

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: AppStyles.bold12(context),
          ),
          const Gap(10),
          Row(
            children: [
              SvgPicture.asset(
                Assets.assetsImagesDone,
                height: 12,
                width: 12,
              ),
              const Gap(5),
              Text(
                "30 done this month",
                style: AppStyles.bold10(context),
              )
            ],
          )
        ],
      ),
    );
  }
}
