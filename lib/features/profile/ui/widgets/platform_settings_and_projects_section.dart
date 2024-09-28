import 'package:flutter/material.dart';

import 'projects_section.dart';

class PlatformSettingsAndProjectsSection extends StatelessWidget {
  const PlatformSettingsAndProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // PlatformSettingsSection(),
        // Gap(20),
        Expanded(
          flex: 3,
          child: ProjectsSection(),
        ),
      ],
    );
  }
}
