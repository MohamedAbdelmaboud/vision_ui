import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../../core/utils/app_images.dart';
import '../../../../core/widgets/custom_drawer.dart';
import '../../../../core/widgets/custom_search_bar.dart';
import '../../logic/cubit/dash_cubit.dart';
import '../../logic/theme_cubit/theme_cubit.dart';

class MainDashboardView extends StatelessWidget {
  const MainDashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  isDarkMode(context)
                      ? Assets.assetsImagesDashboardBackground
                      : Assets.assetsImagesLightBackground,
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Row(
              children: [
                const CustomDrawer(),
                const Gap(20),
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      const SliverPadding(
                        padding: EdgeInsets.all(16.0),
                        sliver: SliverToBoxAdapter(
                          child: CustomSearchBar(),
                        ),
                      ),
                      const SliverGap(16),
                      SliverToBoxAdapter(
                        child: BlocBuilder<DashCubit, DashState>(
                          builder: (context, state) {
                            final cubit = DashCubit.get(context);
                            return cubit.currentDesktopView();
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                const Gap(20),
              ],
            ),
          );
        },
      ),
    );
  }
}
