import 'package:flutter/material.dart';

import '../../../../core/themes/app_dark_colors.dart';
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
      child: Container(
        decoration: buildDecorationTable(),
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

  BoxDecoration buildDecorationTable() {
    return BoxDecoration(
      gradient: LinearGradient(
        colors: [
          AppDarkColors.gradiantTableColor1,
          AppDarkColors.gradiantTableColor1,
        ],
        begin: Alignment.bottomCenter,
        end: Alignment.topCenter,
      ),
      borderRadius: BorderRadius.circular(15),
    );
  }
}
