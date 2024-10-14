import '../themes/app_dark_colors.dart';
import 'custom_theme_extension.dart';

final darkThemeEx = CustomThemeExtension(
  gradientTableColors: [
    AppDarkColors.gradiantTableColor1,
    AppDarkColors.gradiantTableColor2,
  ],
  commonGradientColors: [
    AppDarkColors.commonGradiant1,
    AppDarkColors.commonGradiant2,
  ],
  subTitleColor: AppDarkColors.greyColor,
  drawerItemColor: AppDarkColors.dashboardActiveItemColor,
  carInfoGradientColors: [
    AppDarkColors.carInfoCardGredient1,
    AppDarkColors.carInfoCardGredient2,
    AppDarkColors.carInfoCardGredient3,
  ],
  hintColor: AppDarkColors.gradiantCardColor1,
);
