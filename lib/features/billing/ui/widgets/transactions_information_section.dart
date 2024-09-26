import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../core/themes/app_dark_colors.dart';
import 'newest_transactions.dart';
import 'other_transactions.dart';
import 'transaction_section_header.dart';

class TransactionsInformationSection extends StatelessWidget {
  const TransactionsInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            AppDarkColors.gradiantCardColor1.withOpacity(0.9),
            AppDarkColors.gradiantCardColor2.withOpacity(0.5),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TransactionSectionHeader(),
            Gap(10),
            NewestTransactions(),
            Gap(8),
            OtherTransactions(),
          ],
        ),
      ),
    );
  }
}
