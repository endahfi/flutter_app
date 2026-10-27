import 'package:flutter/material.dart';

import '../data/catatan_dummy.dart';
import '../widgets/catatan_penting.dart';
import '../widgets/catatan_tile.dart';
import '../widgets/info_tanggal.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Catatan Saya')),
      body: Column(
        children: [
          const InfoTanggal(judul: 'Belajar Flutter', tanggal: '26 Okt 2026'),
          const CatatanPenting(teks: 'Catatan penting'),
          const SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: daftarCatatan.length,
              itemBuilder: (context, i) => CatatanTile(
                catatan: daftarCatatan[i],
                onTap: () => debugPrint('Diketuk: ${daftarCatatan[i].judul}'),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
