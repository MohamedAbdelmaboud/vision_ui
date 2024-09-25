import 'package:flutter/material.dart';

import 'custom_project_table.dart';

class ProjectTable extends StatelessWidget {
  const ProjectTable({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomProjectTable(
        labelColum1: "COMPANIES",
        labelColum2: "BUDGET",
        labelColum3: "",
        labelColum4: "",
        rows: []);
  }
}
