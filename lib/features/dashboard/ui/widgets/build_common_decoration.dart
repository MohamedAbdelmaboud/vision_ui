import 'package:flutter/material.dart';

BoxDecoration buildCommonDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    gradient: LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        const Color(0xFF060B26).withOpacity(0.94),
        const Color(0xFF1A1F37),
      ],
      stops: const [0.0, 1.0],
    ),
  );
}
