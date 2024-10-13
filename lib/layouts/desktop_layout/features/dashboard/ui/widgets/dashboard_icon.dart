import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/themes/app_dark_colors.dart';

class DashboardIcon extends StatelessWidget {
  const DashboardIcon({
    super.key,
    required this.icon,
    required this.isActivated,
  });
  final String icon;
  final bool isActivated;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      colorFilter: ColorFilter.mode(
        isActivated ? Colors.white : AppDarkColors.activeIconColor,
        BlendMode.srcIn,
      ),
    );
  }
}
