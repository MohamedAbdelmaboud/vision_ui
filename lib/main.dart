import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'core/helper/custom_scroll_behavior.dart';
import 'features/auth/ui/views/sign_up_view.dart';

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
    return MaterialApp(
      title: 'Vision UI',
      debugShowCheckedModeBanner: false,
      scrollBehavior: CustomScrollBehavior(),
      home: const SignUpView(),
      /**BlocProvider(
        create: (context) => DashCubit(),
        child: const MainDashboardView(),) 
        */
    );
  }
}
