import 'package:flutter/material.dart';

import '../helper/get_font_size.dart';
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

  // Regular styles with dynamic font sizes
  static TextStyle regular9(BuildContext context) => _regular.copyWith(
    fontSize: getFontSize(context, 9),
    color: const Color(0xFFFFFFFF),
  );

  static TextStyle regular10(BuildContext context) => _regular.copyWith(
    fontSize: getFontSize(context, 10),
    color: const Color(0xFFFFFFFF),
  );

  static TextStyle regular12(BuildContext context) => _regular.copyWith(
    fontSize: getFontSize(context, 12),
    color: const Color(0xFFFFFFFF),
  );

  static TextStyle regular14(BuildContext context) => _regular.copyWith(
    fontSize: getFontSize(context, 14),
    color: const Color(0xFFA0AEC0), // Light gray color
  );

  static TextStyle regular16(BuildContext context) => _regular.copyWith(
    fontSize: getFontSize(context, 16),
    color: const Color(0xFFFFFFFF),
  );

  // Medium styles with dynamic font sizes
  static TextStyle medium10(BuildContext context) => _medium.copyWith(
    fontSize: getFontSize(context, 10),
    color: const Color(0xFFFFFFFF),
  );

  static TextStyle medium12(BuildContext context) => _medium.copyWith(
    fontSize: getFontSize(context, 12),
    color: const Color(0xFFFFFFFF),
  );

  static TextStyle medium14(BuildContext context) => _medium.copyWith(
    fontSize: getFontSize(context, 14),
    color: const Color(0xFFFFFFFF),
  );

  static TextStyle medium16(BuildContext context) => _medium.copyWith(
    fontSize: getFontSize(context, 16),
    color: const Color(0xFFFFFFFF),
  );

  static TextStyle medium24(BuildContext context) => _medium.copyWith(
    fontSize: getFontSize(context, 24),
    color: AppDarkColors.greyColor,
  );

  // Bold styles with dynamic font sizes
  static TextStyle bold10(BuildContext context) => _bold.copyWith(
    fontSize: getFontSize(context, 10),
    color: const Color(0xFFFFFFFF),
  );

  static TextStyle bold12(BuildContext context) => _bold.copyWith(
    fontSize: getFontSize(context, 12),
    color: const Color(0xFFFFFFFF),
  );

  static TextStyle bold14(BuildContext context) => _bold.copyWith(
    fontSize: getFontSize(context, 14),
    color: const Color(0xFFFFFFFF),
  );

  static TextStyle bold16(BuildContext context) => _bold.copyWith(
    fontSize: getFontSize(context, 16),
    color: const Color(0xFFFFFFFF),
  );

  static TextStyle bold18(BuildContext context) => _bold.copyWith(
    fontSize: getFontSize(context, 18),
    color: const Color(0xFFFFFFFF),
  );

  static TextStyle bold20(BuildContext context) => _bold.copyWith(
    fontSize: getFontSize(context, 20),
    color: const Color(0xFFFFFFFF),
  );

  static TextStyle bold28(BuildContext context) => _bold.copyWith(
    fontSize: getFontSize(context, 28),
    color: const Color(0xFFFFFFFF),
  );
}
