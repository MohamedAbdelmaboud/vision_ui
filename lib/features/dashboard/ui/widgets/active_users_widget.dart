import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'active_userlist.dart';
import 'active_users_chart.dart';
import 'active_users_title.dart';
import 'build_common_decoration.dart';

class ActiveUsersWidget extends StatelessWidget {
  const ActiveUsersWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: buildCommonDecoration(),
        child: const Column(
          children: [
            ActiveUsersChart(),
            Gap(24),
            ActiveUsersTitle(),
            Gap(24),
            ActiveUserlist(),
            Gap(10),
          
          ],
        ),
      ),
    );
  }
}
