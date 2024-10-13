import 'package:flutter/material.dart';

import '../../../../../tablet_layout/features/dashborad/ui/widgets/tablet_projects_table_widget.dart';

class DashboardProjectsTableWidget extends StatelessWidget {
  const DashboardProjectsTableWidget({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 3,
      child: TabletProjectsTableWidget(),
    );
  }
}
