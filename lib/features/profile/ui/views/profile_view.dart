import 'package:flutter/material.dart';

import '../widgets/platform_settings_and_projects_section.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        PlatformSettingsAndProjectsSection(),
      ],
    );
  }
}
