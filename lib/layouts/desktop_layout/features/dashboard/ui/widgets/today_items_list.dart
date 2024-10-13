import 'package:flutter/material.dart';

import '../../../../../../core/utils/app_images.dart';
import '../../data/models/today_item_model.dart';
import 'today_dashboard_item.dart';

class TodayItemsList extends StatelessWidget {
  const TodayItemsList({
    super.key,
  });
  List<TodayItemModel> get items {
    return [
      TodayItemModel(
        title: "Today's Money",
        amount: "\$53,000",
        percentageChange: "+55%",
        icon: Assets.assetsImagesMoney,
      ),
      TodayItemModel(
        title: "Today's Users",
        amount: "2,300",
        percentageChange: "+5%",
        icon: Assets.assetsImagesUsers,
      ),
      TodayItemModel(
        title: "New Clients",
        amount: "3,052",
        percentageChange: "-14%",
        icon: Assets.assetsImagesClients,
      ),
      TodayItemModel(
        title: "Total Sales",
        amount: "\$173,000",
        percentageChange: "+8%",
        icon: Assets.assetsImagesSales,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: MediaQuery.of(context).size.width,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: items.map((item) {
            return Padding(
              padding: const EdgeInsets.only(
                right: 22.0,
              ),
              child: TodayDashboardItem(model: item),
            );
          }).toList(),
        ),
      ),
    );
  }
}
