import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../../../../core/extensions/context_colors_extension.dart';
import 'newest_transactions.dart';
import 'other_transactions.dart';
import 'transaction_section_header.dart';

class TransactionsInformationSection extends StatelessWidget {
  const TransactionsInformationSection({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: context.theme.gradientTableColors,
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
            Gap(10),
            OtherTransactions(),
          ],
        ),
      ),
    );
  }
}
