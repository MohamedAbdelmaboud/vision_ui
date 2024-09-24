import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_images.dart';
import '../../data/models/over_view_item_model.dart';
import 'build_common_decoration.dart';
import 'order_over_view_item.dart';
import 'order_over_view_title.dart';

class OrderOverView extends StatelessWidget {
  const OrderOverView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 20,
      ),
      decoration: buildCommonDecoration(),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          OrderOverViewTitle(),
          Gap(30),
          OrderOverViewItemList(),
        ],
      ),
    );
  }
}

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
        icon: Assets.assetsImagesServer,
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
        icon: Assets.assetsImagesServer,
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
