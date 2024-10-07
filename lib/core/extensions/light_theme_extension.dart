import '../themes/app_light_colors.dart';
import 'custom_theme_extension.dart';

final lightThemeEx = CustomThemeExtension(
  gradientTableColors: [
    AppLightColors.commonGredient1,
    AppLightColors.commonGredient2,
  ],
  commonGradientColors: [
    AppLightColors.commonGredient1,
    AppLightColors.commonGredient2,
  ],
  subTitleColor: AppLightColors.subtitleColor,
);
