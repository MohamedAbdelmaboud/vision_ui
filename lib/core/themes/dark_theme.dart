import 'package:flutter/material.dart';

import '../extensions/dark_theme_extension.dart';

final darkTheme = ThemeData.dark().copyWith(
  extensions: [
    darkThemeEx,
  ],
);
