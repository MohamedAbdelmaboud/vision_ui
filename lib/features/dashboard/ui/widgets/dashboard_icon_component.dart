import 'package:flutter/material.dart';

import '../../../../core/extensions/context_colors_extension.dart';
import '../../../../core/themes/app_dark_colors.dart';
import 'dashboard_icon.dart';

class DashboardIconComponent extends StatelessWidget {
  const DashboardIconComponent({
    super.key,
    required this.icon,
    required this.isActivated,
  });
  final String icon;
  final bool isActivated;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      height: 32,
      width: 32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: isActivated
            ? AppDarkColors.activeIconColor
            : context.theme.drawerItemColor,
      ),
      child: DashboardIcon(
        icon: icon,
        isActivated: isActivated,
      ),
    );
  }
}
