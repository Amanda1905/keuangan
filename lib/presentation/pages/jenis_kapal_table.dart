import 'package:flutter/material.dart';
import 'package:uang/presentation/constant/theme.dart';

class JenisKapalTable extends StatefulWidget {
  const JenisKapalTable({super.key});

  @override
  State<JenisKapalTable> createState() => _JenisKapalTableState();
}

class _JenisKapalTableState extends State<JenisKapalTable> {
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
                      'Jenis Kapal',
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
                  DataColumn(label: Text('Jenis Kapal')),
                ],
                rows: const[
                  DataRow(
                    cells: [
                      DataCell(Text('Kapal Niaga')),
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