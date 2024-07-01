import 'package:flutter/material.dart';
import 'package:uang/presentation/constant/theme.dart';

class TarifPanduTable extends StatefulWidget {
  const TarifPanduTable({super.key});

  @override
  State<TarifPanduTable> createState() => _TarifPanduTableState();
}

class _TarifPanduTableState extends State<TarifPanduTable> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey[100],
        appBar: AppBar(
          backgroundColor: Colors.transparent,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tarif Pandu',
                      style: boldBlackTextStyle.copyWith(fontSize: 18),
                    ),
                  ],
                ),
              ],
            ),
        ),
        body: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 5,
                offset: const Offset(0, 3), // mengatur posisi bayangan
              ),
            ],
          ),
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 25),
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Namw')),
                  DataColumn(label: Text('Price')),
                ],
                rows: const[
                  DataRow(
                    cells: [
                      DataCell(Text('JOSEPHINE III')),
                      DataCell(Text('-')),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}