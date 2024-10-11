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
  drawerItemColor: AppLightColors.commonGredient1,
  carInfoGradientColors: [
    AppLightColors.carInfoCardGredient1,
    AppLightColors.carInfoCardGredient2,
    AppLightColors.carInfoCardGredient3,
  ],
);
