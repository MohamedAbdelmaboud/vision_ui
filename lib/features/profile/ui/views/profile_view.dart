import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/platform_settings_and_projects_section.dart';
import '../widgets/user_details_section.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        UserDetailsSection(),
        Gap(20),
        PlatformSettingsAndProjectsSection(),
      ],
    );
  }
}
