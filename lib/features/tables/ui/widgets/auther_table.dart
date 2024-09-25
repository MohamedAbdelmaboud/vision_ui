import 'package:flutter/material.dart';

import '../../../../core/widgets/custom_table.dart';

class AutherTable extends StatelessWidget {
  const AutherTable({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width * 0.69;
    return CustomTable(
      title: "Authors",
      rows: [
        _buildDataRow(screenWidth, 'assets/author1.png', 'Esthera Jackson',
            'Manager', 'Organization', 'Online', '14/06/21'),
        _buildDataRow(screenWidth, 'assets/author2.png', 'Alexa Liras',
            'Programmer', 'Developer', 'Offline', '14/06/21'),
        _buildDataRow(screenWidth, 'assets/author3.png', 'Laurent Michael',
            'Executive', 'Projects', 'Online', '14/06/21'),
        _buildDataRow(screenWidth, 'assets/author4.png', 'Freduardo Hill',
            'Manager', 'Organization', 'Online', '14/06/21'),
        _buildDataRow(screenWidth, 'assets/author5.png', 'Daniel Thomas',
            'Programmer', 'Developer', 'Offline', '14/06/21'),
        _buildDataRow(screenWidth, 'assets/author6.png', 'Mark Wilson',
            'Designer', 'UI/UX Design', 'Offline', '14/06/21'),
      ],
    );
  }
}

DataRow _buildDataRow(
  double screenWidth,
  String imagePath,
  String name,
  String function,
  String department,
  String status,
  String employed,
) {
  double cellWidth = screenWidth * 0.2;

  return DataRow(
    cells: [
      DataCell(
        SizedBox(
          width: cellWidth,
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage(imagePath),
                radius: 20,
              ),
              const SizedBox(width: 8),
              Text(
                name,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
      DataCell(
        SizedBox(
          width: cellWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                function,
                style: const TextStyle(color: Colors.white, fontSize: 14),
              ),
              Text(
                department,
                style: const TextStyle(color: Colors.white54, fontSize: 12),
              ),
            ],
          ),
        ),
      ),
      DataCell(
        SizedBox(
          width: cellWidth,
          child: Container(
            width: 100,
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
            decoration: BoxDecoration(
              color: status == 'Online' ? Colors.green : Colors.grey,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              status,
              style: const TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      DataCell(
        SizedBox(
          width: cellWidth,
          child: Text(
            employed,
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ),
      DataCell(
        SizedBox(
          width: cellWidth,
          child: TextButton(
            onPressed: () {},
            child: const Text(
              'Edit',
              style: TextStyle(color: Colors.blue),
            ),
          ),
        ),
      ),
    ],
  );
}
