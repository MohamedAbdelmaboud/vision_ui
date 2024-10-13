import 'package:flutter/material.dart';

class IncreaseAndDecreaseAndPendingContainer extends StatelessWidget {
  const IncreaseAndDecreaseAndPendingContainer({
    super.key,
    required this.color,
    required this.icon,
  });
  final Color color;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 1,
          color: color,
        ),
      ),
      child: Icon(
        icon,
        color: color,
        size: 14,
      ),
    );
  }
}
