import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/extensions/context_colors_extension.dart';
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
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        decoration: buildDecorationTable(context),
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

  BoxDecoration buildDecorationTable(BuildContext context) {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: context.theme.gradientTableColors,
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ),
      borderRadius: BorderRadius.circular(15),
    );
  }
}
