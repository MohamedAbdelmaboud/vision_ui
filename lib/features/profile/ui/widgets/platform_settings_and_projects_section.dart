import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'platform_settings_section.dart';
import 'projects_section.dart';

class PlatformSettingsAndProjectsSection extends StatelessWidget {
  const PlatformSettingsAndProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 4,
          child: PlatformSettingsSection(),
        ),
        Gap(20),
        Expanded(
          flex: 11,
          child: ProjectsSection(),
        ),
      ],
    );
  }
}
