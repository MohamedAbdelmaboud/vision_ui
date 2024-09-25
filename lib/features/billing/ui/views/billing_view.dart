import 'package:flutter/material.dart';

import '../../../../core/utils/app_images.dart';

class BillingView extends StatelessWidget {
  const BillingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                Assets.assetsImagesCardBackground,
              ),
              fit: BoxFit.cover,
            ),
          ),
        )
      ],
    );
  }
}
