import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'taxes_item_details.dart';
import 'taxes_item_title.dart';

class TaxesItem extends StatelessWidget {
  const TaxesItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TaxesItemTitle(),
        Gap(16),
        TaxesItemDetails(),
      ],
    );
  }
}
