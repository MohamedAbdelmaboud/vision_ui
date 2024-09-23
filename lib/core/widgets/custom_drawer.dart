import 'drawer_body.dart';
import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 264,
      decoration: buildDrawerDecoration(),
      child: const DrawerBody(),
    );
  }

  BoxDecoration buildDrawerDecoration() {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: LinearGradient(
        begin: Alignment.topRight,
        end: Alignment.bottomLeft,
        colors: [
          const Color(0xFF060B26),
          const Color(0xFF0E1E50).withOpacity(0.99),
        ],
        stops: const [0.8, 0.95], // TODO: Check this or remove
      ),
    );
  }
}
