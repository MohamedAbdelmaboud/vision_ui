import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import '../widgets/platform_settings_and_projects_section.dart';
import 'car_info_indicator.dart';
import 'car_info_item.dart';
import 'car_info_title.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        IntrinsicHeight(
          child: Row(
            children: [
              // WelcomeProfileRightSection(),
              Gap(24),
              ProfileCarInfoSection()
            ],
          ),
        ),
        Gap(24),
        PlatformSettingsAndProjectsSection(),
      ],
    );
  }
}

class ProfileCarInfoSection extends StatelessWidget {
  const ProfileCarInfoSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: buildCarInfoDecoration(),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CarInfoTitle(),
          Row(
            children: [
              CarInfoIndicator(),
              Gap(30),
              CarInfoItem(),
            ],
          ),
        ],
      ),
    );
  }

  BoxDecoration buildCarInfoDecoration() {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [
          AppDarkColors.gradiantTableColor1.withOpacity(0.7),
          AppDarkColors.gradiantTableColor1.withOpacity(0.7),
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ),
      borderRadius: BorderRadius.circular(15),
    );
  }
}
