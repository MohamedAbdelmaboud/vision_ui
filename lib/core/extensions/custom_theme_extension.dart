import 'package:flutter/material.dart';

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  final List<Color> gradientTableColors;
  final List<Color> commonGradientColors;

  CustomThemeExtension({
    required this.gradientTableColors,
    required this.commonGradientColors,
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith({
    List<Color>? gradientTableColors,
    List<Color>? commonGradientColors,
  }) {
    return CustomThemeExtension(
      gradientTableColors: gradientTableColors ?? this.gradientTableColors,
      commonGradientColors: commonGradientColors ?? this.commonGradientColors,
    );
  }

  @override
  ThemeExtension<CustomThemeExtension> lerp(
      covariant ThemeExtension<CustomThemeExtension>? other, double t) {
    if (other is! CustomThemeExtension) {
      return this;
    }

    return CustomThemeExtension(
      gradientTableColors: [
        Color.lerp(gradientTableColors[0], other.gradientTableColors[0], t)!,
        Color.lerp(gradientTableColors[1], other.gradientTableColors[1], t)!,
      ],
      commonGradientColors: [
        Color.lerp(commonGradientColors[0], other.commonGradientColors[0], t)!,
        Color.lerp(commonGradientColors[1], other.commonGradientColors[1], t)!,
      ],
    );
  }
}
