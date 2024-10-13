import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/platform_settings_and_projects_section.dart';
import '../widgets/profile_car_info_section.dart';
import '../widgets/user_details_section.dart';
import '../widgets/welcome_profile_right_section.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        IntrinsicHeight(
          child: Row(
            children: [
              WelcomeProfileRightSection(),
              Gap(24),
              ProfileCarInfoSection(),
            ],
          ),
        ),
        Gap(24),
        UserDetailsSection(),
        Gap(20),
        PlatformSettingsAndProjectsSection(),
      ],
    );
  }
}
