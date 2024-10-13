import '../../layouts/desktop_layout/features/dashboard/logic/theme_cubit/theme_cubit.dart';
import '../utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_advanced_switch/flutter_advanced_switch.dart';

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = ValueNotifier<bool>(false);

    return AdvancedSwitch(
      controller: controller,
      onChanged: (value) {
        ThemeCubit.get(context).changeTheme();
      },
      activeImage: const AssetImage(Assets.assetsImagesDashboardBackground),
      inactiveImage: const AssetImage(Assets.assetsImagesLightBackground),
      borderRadius: const BorderRadius.all(
        Radius.circular(15),
      ),
      width: 40.0,
      height: 20.0,
      enabled: true,
      disabledOpacity: 0.5,
    );
  }
}
