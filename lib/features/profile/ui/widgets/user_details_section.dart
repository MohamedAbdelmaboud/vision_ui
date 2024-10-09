import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/extensions/context_colors_extension.dart';
import 'over_view_and_teams_and_project_section.dart';
import 'user_details_image.dart';
import 'user_name_and_email.dart';

class UserDetailsSection extends StatelessWidget {
  const UserDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: context.theme.commonGradientColors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 12,
        vertical: 12,
      ),
      child: const Row(
        children: [
          UserDetailsImage(),
          Gap(15),
          UserNameAndEmail(),
          Spacer(),
          OverViewAndTeamsAndProjectSection(),
        ],
      ),
    );
  }
}
