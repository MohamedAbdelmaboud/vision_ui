import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:vision_ui/core/themes/app_dark_colors.dart';
import 'package:vision_ui/features/dashboard/data/models/dashboard_item_model.dart';
import 'package:vision_ui/features/dashboard/ui/widgets/dashboard_icon_component.dart';
import 'package:vision_ui/features/dashboard/ui/widgets/dashboard_item_text.dart';

class DashboardItem extends StatelessWidget {
  const DashboardItem({
    super.key,
    required this.model,
    this.isActivated = false,
  });
  final DashboardItemModel model;
  final bool isActivated;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: isActivated ? AppDarkColors.dashboardActiveItemColor : null,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          DashboardIconComponent(
            icon: model.icon,
            isActivated: isActivated,
          ),
          const Gap(14),
          DashboardItemText(
            title: model.title,
          ),
        ],
      ),
    );
  }
}
