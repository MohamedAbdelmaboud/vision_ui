import 'package:flutter/material.dart';
import 'package:vision_ui/core/themes/app_dark_colors.dart';
import 'package:vision_ui/features/dashboard/ui/widgets/dashboard_icon.dart';

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
            : AppDarkColors.inactiveIconColor,
      ),
      child: DashboardIcon(
        icon: icon,
        isActivated: isActivated,
      ),
    );
  }
}
