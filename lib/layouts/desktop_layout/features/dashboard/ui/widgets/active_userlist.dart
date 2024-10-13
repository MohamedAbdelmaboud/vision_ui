import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_images.dart';
import '../../data/models/active_user_model.dart';
import 'active_user_item.dart';

class ActiveUserlist extends StatelessWidget {
  const ActiveUserlist({
    super.key,
  });
  List<ActiveUserModel> get items {
    return [
      ActiveUserModel(
        title: 'Users',
        value: '32,984',
        percentage: 0.75,
        icon: Assets.assetsImagesUsersFolder,
      ),
      ActiveUserModel(
        title: 'Clicks',
        value: '2.42m',
        percentage: 0.50,
        icon: Assets.assetsImagesClicks,
      ),
      ActiveUserModel(
        title: 'Sales',
        value: '2,400\$',
        percentage: 0.60,
        icon: Assets.assetsImagesSalesFolder,
      ),
      ActiveUserModel(
        title: 'Items',
        value: '320',
        percentage: 0.90,
        icon: Assets.assetsImagesItems,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: items.map(
          (item) {
            return Padding(
              padding: const EdgeInsets.only(right: 30.0),
              child: ActiveUserItem(model: item),
            );
          },
        ).toList(),
      ),
    );
  }
}
