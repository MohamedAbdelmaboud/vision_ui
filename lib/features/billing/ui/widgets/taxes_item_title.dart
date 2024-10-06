import 'package:flutter/material.dart';

class TaxesItemTitle extends StatelessWidget {
  const TaxesItemTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Text(
      //TODO :
      'NEWSET',
      style: AppStyles.medium10(context).copyWith(
        color: AppDarkColors.greyColor,
      ),
    );
  }
}
