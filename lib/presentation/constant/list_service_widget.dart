import 'package:flutter/material.dart';
import 'package:uang/presentation/constant/theme.dart';
import 'package:uang/presentation/pages/countrie_table.dart';
import 'package:uang/presentation/pages/currency_table.dart';
import 'package:uang/presentation/pages/data_kapal_table.dart';
import 'package:uang/presentation/pages/detail_jenis_jasa_table.dart';
import 'package:uang/presentation/pages/hitungan_etmal_table.dart';
import 'package:uang/presentation/pages/jenis_jasa_table.dart';
import 'package:uang/presentation/pages/jenis_kapal_table.dart';
import 'package:uang/presentation/pages/jenis_pelayanan_table.dart';
import 'package:uang/presentation/pages/satuan_bayar_table.dart';
import 'package:uang/presentation/pages/satuan_detail_table.dart';
import 'package:uang/presentation/pages/status_service_table.dart';
import 'package:uang/presentation/pages/tarif_dasar_table.dart';
import 'package:uang/presentation/pages/tarif_pandu_table.dart';
import 'package:uang/presentation/pages/terminal_pelabuhan_table.dart';

class ListServiceWidget extends StatelessWidget {
  const ListServiceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        const SizedBox(height: 12),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CountrieTable(),
              ),
            );
          },
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Countrie',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const CurrencyTable(),
              ),
            );
          },
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Currency',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DataKapalTable(),
              ),
            );
          },
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Data Kapal',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailJenisJasaTable(),
              ),
            );
          },
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Detail Jenis Jasa',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const HitunganEtmalTable(),
              ),
            );
          },
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Hitungan Etmal',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const JenisJasaTable(),
              ),
            );
          },
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Jenis Jasa',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const JenisKapalTable(),
              ),
            );
          },
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Jenis Kapal',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const JenisPelayananTable(),
              ),
            );
          },
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Jenis Pelayanan',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SatuanBayarTable(),
              ),
            );
          },
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Satuan Bayar',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const SatuanDetailTable(),
              ),
            );
          },
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Satuan Detail',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const StatusServiceTable(),
              ),
            );
          },
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Status Service',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TarifDasarTable(),
              ),
            );
          },
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Tarif Dasar',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TarifPanduTable(),
              ),
            );
          },
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Tarif Pandu',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
        const SizedBox(height: 12),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const TerminalPelabuhanTable(),
              ),
            );
          },
          child: Card(
            color: Colors.indigo[900],
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Text(
                'Terminal Pelabuhan',
                style: mediumWhiteTextStyle,
              ),
            ),
          ),
        ),
      ],
    );
  }
}