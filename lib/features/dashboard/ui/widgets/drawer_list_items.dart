import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';
import '../../data/models/dashboard_item_model.dart';
import 'drawer_item.dart';

class DrawerListItems extends StatefulWidget {
  const DrawerListItems({
    super.key,
  });

  @override
  State<DrawerListItems> createState() => _DrawerListItemsState();
}

class _DrawerListItemsState extends State<DrawerListItems> {
  int currentIndex = 0;
  List<DrawerItemModel> get items {
    return [
      DrawerItemModel(
        icon: Assets.assetsImagesHome,
        title: 'Dashboard',
      ),
      DrawerItemModel(
        icon: Assets.assetsImagesTables,
        title: 'Tables',
      ),
      DrawerItemModel(
        icon: Assets.assetsImagesBilling,
        title: 'Billing',
      ),
      DrawerItemModel(
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
            padding: const EdgeInsets.only(bottom: 12.0),
            child: DrawerItem(
              model: item,
              isActivated: currentIndex == index,
            ),
          ),
        );
      },
    ).toList());
  }
}
