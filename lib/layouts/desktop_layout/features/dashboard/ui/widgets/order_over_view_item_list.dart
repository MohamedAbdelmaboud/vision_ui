import '../../../../../../core/utils/app_images.dart';
import '../../data/models/over_view_item_model.dart';
import 'order_over_view_item.dart';
import 'package:flutter/material.dart';

class OrderOverViewItemList extends StatelessWidget {
  const OrderOverViewItemList({super.key});

  List<OverViewItemModel> get items {
    return [
      OverViewItemModel(
        title: "\$2400, Design changes",
        date: "22 Dec 7:20 PM",
        icon: Assets.assetsImagesNotification,
      ),
      OverViewItemModel(
        title: "New order #4219423",
        date: "21 Dec 11:21 PM",
        icon: Assets.assetsImagesNeworder,
      ),
      OverViewItemModel(
        title: "Server Payments for April",
        date: "21 Dec 9:28 PM",
        icon: Assets.assetsImagesMastercard,
      ),
      OverViewItemModel(
        title: "New card added for order #3210145",
        date: "20 Dec 3:52 PM",
        icon: Assets.assetsImagesCard,
      ),
      OverViewItemModel(
        title: "Unlock packages for Development",
        date: "19 Dec 11:35 PM",
        icon: Assets.assetsImagesXd,
      ),
      OverViewItemModel(
        title: "New order #9851258",
        date: "18 Dec 4:41 PM",
        icon: Assets.assetsImagesCard,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map(
            (model) => Padding(
              padding: const EdgeInsets.only(
                bottom: 10.0,
              ),
              child: OrderOverViewItem(model: model),
            ),
          )
          .toList(),
    );
  }
}
