import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import 'build_common_decoration.dart';
import 'order_over_view_item_list.dart';
import 'order_over_view_title.dart';

class OrderOverView extends StatelessWidget {
  const OrderOverView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        height: 440,
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        decoration: buildDecorationTable(),
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            OrderOverViewTitle(),
            Gap(30),
            OrderOverViewItemList(),
          ],
        ),
      ),
    );
  }  BoxDecoration buildDecorationTable() {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [
          AppDarkColors.gradiantTableColor1.withOpacity(0.7),
          AppDarkColors.gradiantTableColor1.withOpacity(0.7),
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ),
      borderRadius: BorderRadius.circular(15),
    );
  }
}
