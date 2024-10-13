import '../../../../../../core/extensions/context_colors_extension.dart';
import '../../../../../desktop_layout/features/dashboard/ui/widgets/projects_table.dart';
import '../../../../../desktop_layout/features/dashboard/ui/widgets/projects_table_title.dart';
import 'package:flutter/material.dart';

class TabletProjectsTableWidget extends StatelessWidget {
  const TabletProjectsTableWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
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
