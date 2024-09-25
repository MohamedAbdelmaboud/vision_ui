import '../../../../core/utils/app_images.dart';
import '../../data/models/active_user_model.dart';
import 'active_user_item.dart';
import 'dashboard_view_body.dart';
import 'package:flutter/material.dart';

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
    return Row(
      children: items.map(
        (item) {
          return Padding(
            padding: const EdgeInsets.only(right: 50.0),
            child: ActiveUserItem(model: item),
          );
        },
      ).toList(),
    );
  }
}
