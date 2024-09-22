import 'package:flutter/material.dart';
import 'package:vision_ui/core/helper/custom_scroll_behavior.dart';
import 'package:vision_ui/features/dashboard/ui/views/dashborad_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vision UI',
      scrollBehavior: CustomScrollBehavior(),
      home: const DashboradView(),
    );
  }
}
