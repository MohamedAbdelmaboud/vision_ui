import '../../../../core/utils/app_images.dart';
import 'package:flutter/material.dart';

import 'welcome_container_body.dart';

class WelcomeContainer extends StatelessWidget {
  const WelcomeContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        alignment: Alignment.centerLeft,
        height: 300,
        padding: const EdgeInsets.symmetric(
          vertical: 36,
          horizontal: 31,
        ),
        decoration: buildDashboardDecoration(),
        child: const WelcomeContainerBody(),
      ),
    );
  }

  BoxDecoration buildDashboardDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image: const DecorationImage(
        image: AssetImage(Assets.assetsImagesBraden),
        fit: BoxFit.cover,
      ),
    );
  }
}
