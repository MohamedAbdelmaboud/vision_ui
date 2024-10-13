import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../../../core/themes/app_dark_colors.dart';

class DashboardItemIcon extends StatelessWidget {
  const DashboardItemIcon({
    super.key,
    required this.icon,
  });
  final String icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(11.25),
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: AppDarkColors.activeIconColor,
      ),
      child: SvgPicture.asset(
        icon,
      ),
    );
  }
}
