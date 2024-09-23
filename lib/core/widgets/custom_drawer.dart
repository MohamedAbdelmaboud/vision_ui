import 'package:flutter/material.dart';

import '../utils/app_images.dart';
import 'drawer_body.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 264,
      decoration: buildDrawerDecoration(),
      child: const DrawerBody(),
    );
  }

  BoxDecoration buildDrawerDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: const DecorationImage(
        image: AssetImage(
          Assets.assetsImagesDrawerBackground,
        ),
        fit: BoxFit.cover,
      ),
    );
  }
}
