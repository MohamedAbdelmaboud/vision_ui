import '../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ActiveUserItemValue extends StatelessWidget {
  const ActiveUserItemValue({
    super.key,
    required this.value
  });
  final String value;
  @override
  Widget build(BuildContext context) {
    return Text(
      value,
      style: AppStyles.bold16(context),
    );
  }
}
