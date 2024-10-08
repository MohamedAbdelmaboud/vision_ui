import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'billing_card_sub_title_text.dart';

class BillingCardSubTitle extends StatelessWidget {
  const BillingCardSubTitle(
      {super.key,
      required this.companyName,
      required this.emailAddress,
      required this.vatNum});
  final String companyName;
  final String emailAddress;
  final String vatNum;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BillingCardSubTitleText(
          text: companyName,
        ),
        const Gap(3),
        BillingCardSubTitleText(
          text: emailAddress,
        ),
        const Gap(3),
        BillingCardSubTitleText(
          text: vatNum,
        ),
      ],
    );
  }
}
