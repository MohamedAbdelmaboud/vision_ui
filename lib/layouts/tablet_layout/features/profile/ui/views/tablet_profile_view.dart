import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../desktop_layout/features/profile/ui/widgets/platform_settings_and_projects_section.dart';
import '../../../../../desktop_layout/features/profile/ui/widgets/profile_car_info_section.dart';
import '../../../../../desktop_layout/features/profile/ui/widgets/user_details_section.dart';
import '../../../../../desktop_layout/features/profile/ui/widgets/welcome_profile_right_section.dart';

class TabletProfileView extends StatelessWidget {
  const TabletProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        IntrinsicHeight(
          child: WelcomeProfileRightSection(),
        ),
        Gap(20),
        IntrinsicHeight(
          child: Row(
            children: [
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
