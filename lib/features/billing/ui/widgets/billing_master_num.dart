import 'package:flutter/material.dart';

import '../../../../core/utils/app_styles.dart';

class BillingMasterNum extends StatelessWidget {
  const BillingMasterNum({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      '7812 2139 0823 XXXX',
      style: AppStyles.bold14(context),
    );
  }
}
