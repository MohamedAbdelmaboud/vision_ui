import 'package:flutter/material.dart';

import '../extensions/light_theme_extension.dart';

final lightTheme = ThemeData.light().copyWith(
  extensions: [
    lightThemeEx,
  ],
);
