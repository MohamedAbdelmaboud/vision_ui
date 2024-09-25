import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import 'card_sub_title.dart';
import 'card_title_and_delete_and_edit.dart';

class BillingCard extends StatelessWidget {
  const BillingCard({
    super.key,
    required this.title,
    required this.companyName,
    required this.emailAddress,
    required this.vatNum,
  });
  final String title;
  final String companyName;
  final String emailAddress;
  final String vatNum;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppDarkColors.gradiantCardColor1.withOpacity(0.9),
            AppDarkColors.gradiantCardColor2.withOpacity(0.5),
          ],
          begin: Alignment.topCenter,
          end: Alignment.topLeft,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CardTitleAndDeleteAndEdit(
              title: title,
            ),
            const Gap(4),
            CardSubTitle(
              companyName: companyName,
              emailAddress: emailAddress,
              vatNum: vatNum,
            )
          ],
        ),
      ),
    );
  }
}
