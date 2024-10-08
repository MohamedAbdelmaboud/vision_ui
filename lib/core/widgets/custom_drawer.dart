import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/dashboard/logic/theme_cubit/theme_cubit.dart';
import '../utils/app_images.dart';
import 'drawer_body.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          width: 264,
          decoration: buildDrawerDecoration(context),
          child: const DrawerBody(),
        );
      },
    );
  }

  BoxDecoration buildDrawerDecoration(BuildContext context) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      image: DecorationImage(
        image: AssetImage(
          isDarkMode(context)
              ? Assets.assetsImagesDrawerBackground
              : Assets.assetsImagesDrawerBackgroundLight,
        ),
        fit: BoxFit.cover,
      ),
    );
  }
}
