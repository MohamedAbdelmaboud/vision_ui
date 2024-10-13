import 'package:flutter/material.dart';

import '../../../../../../core/themes/app_dark_colors.dart';

class UserDetailsEditButton extends StatelessWidget {
  const UserDetailsEditButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        gradient: const LinearGradient(
          colors: [
            AppDarkColors.inactiveIconColor,
            AppDarkColors.searchBoxColor
          ],
        ),
      ),
      child: const Icon(
        Icons.edit,
        size: 14,
        color: AppDarkColors.whiteColor,
      ),
    );
  }
}
