import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/themes/app_dark_colors.dart';
import '../../../../../../core/utils/app_styles.dart';
import '../../../../../../core/widgets/icon_text_button.dart';

class OverViewAndTeamsAndProjectSection extends StatelessWidget {
  const OverViewAndTeamsAndProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconTextButton(
          buttonColor: AppDarkColors.activeIconColor,
          padingHorizental: 15,
          padingVeritical: 10,
          style: AppStyles.medium10(
            context,
          ),
          icon: Icons.view_carousel_rounded,
          iconColor: AppDarkColors.whiteColor,
          buttonText: "OVERVIEW",
        ),
        const Gap(8),
        IconTextButton(
          buttonColor: Colors.transparent,
          padingHorizental: 15,
          padingVeritical: 10,
          style: AppStyles.medium10(
            context,
          ),
          icon: Icons.people_rounded,
          iconColor: AppDarkColors.whiteColor,
          buttonText: "TEAMS",
        ),
        const Gap(8),
        IconTextButton(
          buttonColor: Colors.transparent,
          padingHorizental: 15,
          padingVeritical: 10,
          style: AppStyles.medium10(
            context,
          ),
          icon: Icons.file_copy_rounded,
          iconColor: AppDarkColors.whiteColor,
          buttonText: "PROJECTS",
        ),
      ],
    );
  }
}
