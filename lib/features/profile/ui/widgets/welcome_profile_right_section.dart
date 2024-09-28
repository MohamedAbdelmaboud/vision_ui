import '../../../../core/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'welcome_profile_widget.dart';

class WelcomeProfileRightSection extends StatelessWidget {
  const WelcomeProfileRightSection({
    super.key,
  });

  @override 
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(35),
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white,
        image: const DecorationImage(
          image: AssetImage(
            Assets.assetsImagesWelcomeBackground,
          ),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: const WelcomeProfileWidget(),
    );
  }
}
