import 'package:flutter/material.dart';

import '../../../../core/themes/app_dark_colors.dart';

BoxDecoration buildCommonDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        AppDarkColors.commonGradiant1,
        AppDarkColors.commonGradiant2,
      ],
      stops: const [0.0, 1.0],
    ),
  );
}
