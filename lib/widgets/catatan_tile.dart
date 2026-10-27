import 'package:flutter/material.dart';

import '../models/catatan.dart';

class CatatanTile extends StatelessWidget {
  final Catatan catatan;
  final VoidCallback? onTap;

  const CatatanTile({super.key, required this.catatan, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: const Icon(Icons.note),
        title: Text(catatan.judul),
        subtitle: Text(catatan.deskripsi ?? catatan.tanggal),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap,
      ),
    );
  }
}
