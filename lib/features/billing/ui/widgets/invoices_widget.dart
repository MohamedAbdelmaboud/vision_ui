import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import 'invoices_item.dart';
import 'invoices_title.dart';

class InvoicesWidget extends StatelessWidget {
  const InvoicesWidget({
    super.key,
  });
  List<InvoicesItem> get invoices {
    return [
      // 'July, 01, 2024' ,#MS-415646,120
      const InvoicesItem(
        code: 'SM-17203',
        date: 'July, 01, 2024',
        price: '120',
      ),
      const InvoicesItem(
        code: 'MS-415646',
        date: 'June, 01, 2024',
        price: '120',
      ),
      const InvoicesItem(
        code: 'MS-415646',
        date: 'April, 01, 2024',
        price: '120',
      ),
      const InvoicesItem(
        code: 'RV-4646',
        date: 'RV, 01, 2024',
        price: '120',
      ),
      const InvoicesItem(
        code: 'MS-2567',
        date: 'July, 01, 2024',
        price: '120',
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // flex: 2,
      child: Container(
        padding: const EdgeInsets.all(24),
        decoration: buildInvoicesDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const InvoicesTitle(),
            const Gap(16),
            ...invoices,
          ],
        ),
      ),
    );
  }

  BoxDecoration buildInvoicesDecoration() {
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
