import 'package:flutter/material.dart';

class InfoTanggal extends StatelessWidget {
  final String judul;
  final String tanggal;

  const InfoTanggal({super.key, required this.judul, required this.tanggal});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(judul),
          Row(
            children: [
              const Icon(Icons.event),
              Text(' $tanggal'),
            ],
          ),
        ],
      ),
    );
  }
}
