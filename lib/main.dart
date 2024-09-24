import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/helper/custom_scroll_behavior.dart';
import 'features/dashboard/logic/cubit/dash_cubit.dart';
import 'features/dashboard/ui/views/main_dashboard_view.dart';

void main() {
  runApp(const MyApp()); // Wrap your app
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vision UI',
      debugShowCheckedModeBanner: false,
      scrollBehavior: CustomScrollBehavior(),
      home: BlocProvider(
        create: (context) => DashCubit(),
        child: const MainDashboardView(),
      ),
    );
  }
}
