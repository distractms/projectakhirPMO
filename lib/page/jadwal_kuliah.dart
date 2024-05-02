import 'package:flutter/material.dart';

class JadwalKuliah extends StatefulWidget {
  const JadwalKuliah({super.key});

  @override
  State<JadwalKuliah> createState() => _JadwalKuliahState();
}

class _JadwalKuliahState extends State<JadwalKuliah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Jadwal Kuliah"),
      ),
      body: Text("Jadwal Kuliah"),
    );
  }
}
