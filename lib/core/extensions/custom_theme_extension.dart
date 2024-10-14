import 'package:flutter/material.dart';

class CustomThemeExtension extends ThemeExtension<CustomThemeExtension> {
  final List<Color> gradientTableColors;
  final List<Color> commonGradientColors;
  final List<Color> carInfoGradientColors;
  final Color hintColor;

  final Color subTitleColor;
  final Color drawerItemColor;

  CustomThemeExtension({
    required this.hintColor,
    required this.gradientTableColors,
    required this.commonGradientColors,
    required this.subTitleColor,
    required this.drawerItemColor,
    required this.carInfoGradientColors,
  });

  @override
  ThemeExtension<CustomThemeExtension> copyWith(
      {List<Color>? gradientTableColors,
      List<Color>? commonGradientColors,
      Color? textColor,
      Color? drawerItemColor,
      List<Color>? carInfoGradientColors,
      Color? hintColor}) {
    return CustomThemeExtension(
      gradientTableColors: gradientTableColors ?? this.gradientTableColors,
      commonGradientColors: commonGradientColors ?? this.commonGradientColors,
      subTitleColor: textColor ?? subTitleColor,
      drawerItemColor: drawerItemColor ?? this.drawerItemColor,
      carInfoGradientColors:
          carInfoGradientColors ?? this.carInfoGradientColors,
      hintColor: hintColor ?? this.hintColor,
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
      subTitleColor: Color.lerp(subTitleColor, other.subTitleColor, t)!,
      drawerItemColor: Color.lerp(drawerItemColor, other.drawerItemColor, t)!,
      carInfoGradientColors: [
        Color.lerp(
            carInfoGradientColors[0], other.carInfoGradientColors[0], t)!,
        Color.lerp(
            carInfoGradientColors[1], other.carInfoGradientColors[1], t)!,
        Color.lerp(
            carInfoGradientColors[2], other.carInfoGradientColors[2], t)!,
      ],
      hintColor: Color.lerp(hintColor, other.hintColor, t)!,
    );
  }
}
