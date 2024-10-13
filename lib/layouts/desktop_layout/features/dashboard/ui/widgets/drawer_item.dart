import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/extensions/context_colors_extension.dart';
import '../../data/models/dashboard_item_model.dart';
import 'dashboard_icon_component.dart';
import 'dashboard_item_text.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.model,
    this.isActivated = false,
  });
  final DrawerItemModel model;
  final bool isActivated;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: isActivated ? context.theme.drawerItemColor : null,
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
