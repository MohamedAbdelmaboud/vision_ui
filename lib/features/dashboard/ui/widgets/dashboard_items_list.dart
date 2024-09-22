import 'package:flutter/material.dart';
import 'package:vision_ui/core/utils/app_images.dart';
import 'package:vision_ui/features/dashboard/data/models/dashboard_item_model.dart';

import 'dashboard_item.dart';

class DashboardItemsList extends StatefulWidget {
  const DashboardItemsList({
    super.key,
  });

  @override
  State<DashboardItemsList> createState() => _DashboardItemsListState();
}

class _DashboardItemsListState extends State<DashboardItemsList> {
  int currentIndex = 0;
  List<DashboardItemModel> get items {
    return [
      DashboardItemModel(
        icon: Assets.assetsImagesHome,
        title: 'Dashboard',
      ),
      DashboardItemModel(
        icon: Assets.assetsImagesTables,
        title: 'Tables',
      ),
      DashboardItemModel(
        icon: Assets.assetsImagesBilling,
        title: 'Billing',
      ),
      DashboardItemModel(
        icon: Assets.assetsImagesProfile,
        title: 'Profile',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
        children: items.asMap().entries.map(
      (entry) {
        final index = entry.key;
        final item = entry.value;
        return InkWell(
          onTap: () {
            if (currentIndex != index) {
              currentIndex = index;
              setState(() {});
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(bottom:12.0),
            child: DashboardItem(
              model: item,
              isActivated: currentIndex == index,
            ),
          ),
        );
      },
    ).toList());
  }
}
