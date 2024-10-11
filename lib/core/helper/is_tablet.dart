import 'package:flutter/material.dart';
import 'size_config.dart';

bool isTablet(BuildContext context) {
  return MediaQuery.sizeOf(context).width > SizeConfig.tabletBreakPoint;
}
