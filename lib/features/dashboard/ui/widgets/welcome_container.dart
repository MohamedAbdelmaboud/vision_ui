import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';
import '../../logic/theme_cubit/theme_cubit.dart';
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
        // height: 300,
        padding: const EdgeInsets.symmetric(
          vertical: 36,
          horizontal: 31,
        ),
        decoration: buildDashboardDecoration(context),
        child: const WelcomeContainerBody(),
      ),
    );
  }

  BoxDecoration buildDashboardDecoration(BuildContext context) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      image: DecorationImage(
        colorFilter: !isDarkMode(context)
            ? ColorFilter.mode(
                Colors.white.withOpacity(0.7),
                BlendMode.softLight,
              )
            : null,
        image: const AssetImage(
          Assets.assetsImagesBraden,
        ),
        fit: BoxFit.cover,
      ),
    );
  }
}
