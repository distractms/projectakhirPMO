import 'package:flutter/material.dart';

class DaftarTugas extends StatefulWidget {
  const DaftarTugas({super.key});

  @override
  State<DaftarTugas> createState() => _DaftarTugasState();
}

class _DaftarTugasState extends State<DaftarTugas> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Daftar Tugas"),
      ),
      body: Text("Daftar Tugas"),
    );
  }
}
