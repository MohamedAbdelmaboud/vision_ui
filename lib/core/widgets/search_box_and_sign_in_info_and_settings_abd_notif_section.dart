import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../features/tables/ui/widgets/searchbox.dart';
import 'sign_info_and_settings_and_notification_section.dart';

class SearchBoxAndSignInInfoAndSettingsAbdNotifSection extends StatelessWidget {
  const SearchBoxAndSignInInfoAndSettingsAbdNotifSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Searchbox(),
        Gap(5),
        SignInfoAndSettingsAndNotificationSection(),
      ],
    );
  }
}
