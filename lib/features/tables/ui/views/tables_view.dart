import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/auther_table.dart';
import '../widgets/dashboard_companies_table_widget.dart';

class TablesView extends StatelessWidget {
  const TablesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AutherTable(),
        Gap(20),
        DashboardCompaniesTableWidget(),
        Gap(20),
      ],
    );
  }
}
