import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'auther_table.dart';

class TableViewBody extends StatelessWidget {
  const TableViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AutherTable(),
        Gap(16),
      ],
    );
  }
}
