import 'package:flutter/material.dart';

import 'edit_button.dart';
import 'employed_cell.dart';
import 'function_and_department_cell.dart';
import 'image_and_name_and_email_cell.dart';
import 'online_and_offline_cell.dart';

class BuildAuthorRow {
  DataRow buildAuthorRow(
    double screenWidth,
    String imagePath,
    String name,
    String email,
    String function,
    String department,
    String status,
    String employed,
  ) {
    double cellWidth = screenWidth * 0.2;

    return DataRow(
      cells: [
        DataCell(
          ImageWithNameAndEmail(
            cellWidth: cellWidth,
            imagePath: imagePath,
            name: name,
            email: email,
          ),
        ),
        DataCell(
          FunctionAndDepartment(
            cellWidth: cellWidth,
            function: function,
            department: department,
          ),
        ),
        DataCell(
          OnlineAndOffline(
            cellWidth: cellWidth,
            status: status,
          ),
        ),
        DataCell(
          EmployedCell(
            cellWidth: cellWidth,
            employed: employed,
          ),
        ),
        DataCell(
          EditButton(cellWidth: cellWidth),
        ),
      ],
    );
  }
}
