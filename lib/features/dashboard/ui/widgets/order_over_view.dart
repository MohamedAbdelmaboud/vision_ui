import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
      flex: 3,
      child: Container(
        height: 440,
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
      ),
    );
  }
}
