import 'package:flutter/material.dart';

import 'custom_theme_extension.dart';

extension ContextColorsExtension on BuildContext {
  CustomThemeExtension get theme =>
      Theme.of(this).extension<CustomThemeExtension>()!;
}
