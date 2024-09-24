import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

import 'core/helper/custom_scroll_behavior.dart';
import 'features/dashboard/ui/views/dashboard_view.dart';

void main() {
  DevicePreview(
    builder: (context) => const MyApp(), // Wrap your app
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: DevicePreview.locale(context),
      builder: DevicePreview.appBuilder,
      title: 'Vision UI',
      scrollBehavior: CustomScrollBehavior(),
      home: const DashboardView(),
    );
  }
}