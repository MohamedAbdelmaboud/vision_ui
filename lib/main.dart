import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/helper/custom_scroll_behavior.dart';
import 'core/themes/dark_theme.dart';
import 'core/themes/light_theme.dart';
import 'features/dashboard/logic/cubit/dash_cubit.dart';
import 'features/dashboard/logic/theme_cubit/theme_cubit.dart';
import 'features/dashboard/ui/views/main_dashboard_view.dart';

void main() {
  runApp(
    DevicePreview(
      enabled: !kReleaseMode,
      builder: (context) => const MyApp(), // Wrap your app
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => DashCubit(),
        ),
        BlocProvider(
          create: (context) => ThemeCubit(),
        ),
      ],
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return MaterialApp(
            title: 'Vision UI',
            debugShowCheckedModeBanner: false,
            scrollBehavior: CustomScrollBehavior(),
            themeMode: ThemeCubit.get(context).themeMode, // Access ThemeCubit here
            darkTheme: darkTheme,
            theme: lightTheme,
            home: const MainDashboardView(),
          );
        },
      ),
    );
  }
}
