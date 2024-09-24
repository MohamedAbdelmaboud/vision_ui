import 'package:flutter/material.dart';

class DashCustomContainer extends StatelessWidget {
  const DashCustomContainer({
    super.key,
    required this.child,
  });
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 20,
      ),
      // alignment: Alignment.center,
      width: 190,
      child: child,
    );
  }
}
