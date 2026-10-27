import 'package:flutter/material.dart';

class CatatanPenting extends StatelessWidget {
  final String teks;

  const CatatanPenting({super.key, required this.teks});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.blue.shade50,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(teks),
    );
  }
}
