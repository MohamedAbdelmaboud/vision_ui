import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widgets/auther_table.dart';
import '../widgets/project_table.dart';

class TablesView extends StatelessWidget {
  const TablesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AutherTable(),
        Gap(20),
        ProjectTable(),
      ],
    );
  }
}
