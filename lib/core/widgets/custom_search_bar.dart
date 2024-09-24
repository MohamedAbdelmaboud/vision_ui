import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import 'search_box_and_sign_in_info_and_settings_abd_notif_section.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Pages  /  Tables",
            style: AppStyles.medium24,
          ),
          const Spacer(),
          const SearchBoxAndSignInInfoAndSettingsAbdNotifSection()
        ],
      ),
    );
  }
}
