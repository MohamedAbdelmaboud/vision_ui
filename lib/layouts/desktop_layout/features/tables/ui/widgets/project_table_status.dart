import '../../../../../../core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class ProjectTableStatus extends StatelessWidget {
  const ProjectTableStatus({super.key, required this.status});
  final String status;
  @override
  Widget build(BuildContext context) {
    return Text(
      status,
      style: AppStyles.bold12(context).copyWith(
        color: status == 'Done'
            ? Colors.green
            : status == 'In Progress'
                ? Colors.white
                : Colors.red,
      ),
    );
  }
}
