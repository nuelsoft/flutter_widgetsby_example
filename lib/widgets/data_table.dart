import 'package:flutter/material.dart';

class DataTableExample extends StatelessWidget {
  List<DataColumn> _columns = [
    DataColumn(label: Text("Name"), tooltip: "Name"),
    DataColumn(label: Text("Score"), numeric: true, tooltip: "Score")
  ];

  List<DataRow> _rows = [
    DataRow(cells: [DataCell(Text("Smith")), DataCell(Text("30"))]),
    DataRow(cells: [DataCell(Text("Mark")), DataCell(Text("40"))]),
    DataRow(cells: [DataCell(Text("George")), DataCell(Text("90"))])
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: DataTable(columns: _columns, rows: _rows),
    );
  }
}
