import 'package:flutter/material.dart';

import '../../../../core/extensions/context_colors_extension.dart';
import 'projects_table.dart';
import 'projects_table_title.dart';

class DashboardProjectsTableWidget extends StatelessWidget {
  const DashboardProjectsTableWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 3,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        decoration: buildDecorationTable(context),
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ProjectsTableTitle(),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      ProjectsTable(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
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
