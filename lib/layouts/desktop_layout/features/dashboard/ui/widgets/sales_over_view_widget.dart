import 'package:flutter/material.dart';

import '../../../../../tablet_layout/features/dashborad/ui/widgets/tablet_sales_over_view_widget.dart';

class SalesOverViewWidget extends StatelessWidget {
  const SalesOverViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 3,
      child: TabletSalesOverViewWidget(),
    );
  }
}
