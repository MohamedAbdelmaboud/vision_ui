import '../../../../../../core/extensions/context_colors_extension.dart';
import 'companies_table.dart';
import 'package:flutter/material.dart';

class DashboardCompaniesTableWidget extends StatelessWidget {
  const DashboardCompaniesTableWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      width: double.infinity,
      duration: const Duration(milliseconds: 500),
      decoration: buildDecorationTable(context),
      child: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: CompaniesTable(),
      ),
    );
  }

  BoxDecoration buildDecorationTable(BuildContext context) {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: context.theme.gradientTableColors,
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ),
      borderRadius: BorderRadius.circular(15),
    );
  }
}
