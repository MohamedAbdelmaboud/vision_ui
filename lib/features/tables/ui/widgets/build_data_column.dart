import 'package:flutter/material.dart';

class BuildDataColumn {
  List<DataColumn> columns(
    dynamic labelColum1,
    dynamic labelColum2,
    dynamic labelColum3,
    dynamic labelColum4,
    dynamic labelColum5,
    dynamic style,
  ) {
    return [
      DataColumn(
        label: Text(
          labelColum1!,
          style: style,
        ),
      ),
      DataColumn(
        label: Text(
          labelColum2!,
          style: style,
        ),
      ),
      DataColumn(
        label: Text(
          labelColum3!,
          style: style,
        ),
      ),
      DataColumn(
        label: Text(
          labelColum4!,
          style: style,
        ),
      ),
      DataColumn(
        label: Text(
          labelColum5!,
          style: style,
        ),
      ),
    ];
  }
}
