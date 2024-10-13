import 'package:flutter/material.dart';

import '../../../../../../core/extensions/context_colors_extension.dart';

BoxDecoration buildCommonDecoration(BuildContext context) {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: context.theme.commonGradientColors,
      stops: const [0.0, 1.0],
    ),
  );
}
