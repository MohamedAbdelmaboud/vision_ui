import 'package:flutter/material.dart';

class TrackingWidgetIcon extends StatelessWidget {
  const TrackingWidgetIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 30,
      width: 30,
      decoration: BoxDecoration(
        color: const Color(0xFF1A2644),
        borderRadius: BorderRadius.circular(8),
      ),
      child: const Icon(
        Icons.more_horiz,
        color: Colors.deepPurple,
      ),
    );
  }
}
