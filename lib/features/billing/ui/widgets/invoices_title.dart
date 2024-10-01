import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';
import 'custom_button.dart';

class InvoicesTitle extends StatelessWidget {
  const InvoicesTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Invoices',
          style: AppStyles.bold14(context),
        ),
        const Spacer(),
        const CustomButton()
      ],
    );
  }
}
