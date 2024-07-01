import 'package:flutter/material.dart';
import 'package:uang/presentation/constant/theme.dart';

class TarifDasarTable extends StatefulWidget {
  const TarifDasarTable({super.key});

  @override
  State<TarifDasarTable> createState() => _TarifDasarTableState();
}

class _TarifDasarTableState extends State<TarifDasarTable> {
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
                      'Tarif Dasar',
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
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 25),
              child: DataTable(
                columns: const [
                  DataColumn(label: Text('Tarif Dasar')),
                  DataColumn(label: Text('Currency')),
                  DataColumn(label: Text('Currency_usd')),
                  DataColumn(label: Text('Jenis Jasa')),
                  DataColumn(label: Text('Jenis Pelayanan')),
                  DataColumn(label: Text('Jenis Kapal')),
                  DataColumn(label: Text('Satuan Bayar')),
                  DataColumn(label: Text('Detail Jenis Jasa')),
                ],
                rows: const[
                  DataRow(
                    cells: [
                      DataCell(Text('80,000')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('-')),
                      DataCell(Text('Jakarta')),
                      DataCell(Text('Sabang')),
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