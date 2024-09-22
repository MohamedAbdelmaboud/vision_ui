import 'package:flutter/material.dart';
import 'package:vision_ui/core/utils/app_styles.dart';

class DashboardItemText extends StatelessWidget {
  const DashboardItemText({
    super.key,
    required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: AppStyles.medium14,
    );
  }
}
