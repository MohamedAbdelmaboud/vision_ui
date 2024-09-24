import 'package:flutter/material.dart';

import '../themes/app_dark_colors.dart';

class AppStyles {
  // Regular font weight
  static const _regular = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w400,
  );

  // Medium font weight
  static const _medium = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w500,
  );

  // Bold font weight
  static const _bold = TextStyle(
    fontFamily: 'Inter',
    fontWeight: FontWeight.w700,
  );

  // Regular styles
  static final TextStyle regular12 = _regular.copyWith(
    fontSize: 12,
    color: const Color(0xFFFFFFFF),
  );

  static final TextStyle regular14 = _regular.copyWith(
    fontSize: 14,
    color: const Color(0xFFA0AEC0), // Light gray color
  );

  static final TextStyle regular16 = _regular.copyWith(
    fontSize: 16,
    color: const Color(0xFFFFFFFF),
  );

  // Medium styles
  static final TextStyle medium10 = _medium.copyWith(
    fontSize: 10,
    color: const Color(0xFFFFFFFF),
  );

  static final TextStyle medium12 = _medium.copyWith(
    fontSize: 12,
    color: const Color(0xFFFFFFFF),
  );

  static final TextStyle medium14 = _medium.copyWith(
    fontSize: 14,
    color: const Color(0xFFFFFFFF),
  );

  static final TextStyle medium16 = _medium.copyWith(
    fontSize: 16,
    color: const Color(0xFFFFFFFF),
  );

  // Bold styles
  static final TextStyle bold10 = _bold.copyWith(
    fontSize: 10,
    color: const Color(0xFFFFFFFF),
  );

  static final TextStyle bold12 = _bold.copyWith(
    fontSize: 12,
    color: const Color(0xFFFFFFFF),
  );

  static final TextStyle bold14 = _bold.copyWith(
    fontSize: 14,
    color: const Color(0xFFFFFFFF),
  );

  static final TextStyle bold16 = _bold.copyWith(
    fontSize: 16,
    color: const Color(0xFFFFFFFF),
  );

  static final TextStyle bold18 = _bold.copyWith(
    fontSize: 18,
    color: const Color(0xFFFFFFFF),
  );

  static final TextStyle bold20 = _bold.copyWith(
    fontSize: 20,
    color: const Color(0xFFFFFFFF),
  );
  // 28
  static final TextStyle bold28 = _bold.copyWith(
    fontSize: 28,
    color: const Color(0xFFFFFFFF),
  );
  static final TextStyle medium24 = _medium.copyWith(
    fontSize: 24,
    color: AppDarkColors.greyColor,
  );
}
