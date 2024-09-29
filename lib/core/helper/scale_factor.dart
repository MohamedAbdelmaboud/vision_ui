import 'package:flutter/material.dart';

import 'size_config.dart';

double getScaleFactor(BuildContext context) {
  final width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.mobileBreakPoint) {
    return width / 400;
  } else if (width < SizeConfig.tabletBreakPoint) {
    return width / 1300;
  } else {
    return width / SizeConfig.tabletBreakPoint;
  }
}
