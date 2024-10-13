import 'package:flutter/material.dart';

import '../../../../../tablet_layout/features/dashborad/ui/widgets/tablet_tracking_widget.dart';

class DesktopTrackingWidget extends StatelessWidget {
  const DesktopTrackingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 2,
      child: TabletTrackingWidget(),
    );
  }
}
