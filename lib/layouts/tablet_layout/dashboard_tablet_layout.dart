import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';

import '../../../layouts/desktop_layout/features/dashboard/logic/theme_cubit/theme_cubit.dart';
import '../desktop_layout/features/dashboard/logic/cubit/dash_cubit.dart';
import '../../core/utils/app_images.dart';
import '../../core/widgets/custom_app_bar.dart';
import '../../core/widgets/custom_drawer.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: DashCubit.get(context).scaffoldKey,
      drawer: const CustomDrawer(),
      body: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return AnimatedContainer(
            duration: const Duration(milliseconds: 500),
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
                const Gap(20),
                Expanded(
                  child: CustomScrollView(
                    slivers: [
                      SliverPadding(
                        padding: const EdgeInsets.symmetric(vertical: 16.0),
                        sliver: SliverToBoxAdapter(
                          child: CustomAppBar(
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                          ),
                        ),
                      ),
                      const SliverGap(16),
                      SliverToBoxAdapter(
                        child: BlocBuilder<DashCubit, DashState>(
                          builder: (context, state) {
                            final cubit = DashCubit.get(context);
                            return cubit.currentTabletView();
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
