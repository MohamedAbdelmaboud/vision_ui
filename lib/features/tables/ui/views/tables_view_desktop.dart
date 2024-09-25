import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';

class TablesViewDesktop extends StatelessWidget {
  const TablesViewDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppDarkColors.backgroundColor,
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                Assets.assetsImagesBackground,
              ),
              fit: BoxFit.fill),
        ),
        child: Row(
          children: [
            Container(
              width: 200,
            )
          ],
        ),
      ),
    );
  }
}
