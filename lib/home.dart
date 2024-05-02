import 'package:flutter/material.dart';
import 'package:project_akhir_prototype3/page/browser.dart';
import 'package:project_akhir_prototype3/page/daftar_tugas.dart';
import 'package:project_akhir_prototype3/page/jadwal_kuliah.dart';
import 'package:project_akhir_prototype3/variabel/global_var.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    CurrentUrl.currentUrl;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple[50],
      appBar: AppBar(
        title: const Text("Portal Mahasiswa"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(horizontal: 25.0),
                    height: 55,
                    width: double.infinity,
                    child: const Text(
                      "Student Fast Menu",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    height: 100,
                    width: double.infinity,
                    margin: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 100,
                          width: 85,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    CurrentUrl.currentUrl =
                                        'https://student.amikompurwokerto.ac.id/presensi';
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Browser(),
                                      ),
                                    );
                                    TitleFastMenu.titleFastMenu = "E-Presensi";
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.purple,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  height: 45,
                                  width: 45,
                                  child: const Icon(
                                    Icons.fact_check_outlined,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                height: 40,
                                width: double.infinity,
                                child: const Text(
                                  "E-Presensi",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 100,
                          width: 85,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    CurrentUrl.currentUrl =
                                        'https://student.amikompurwokerto.ac.id/rincian_nilai_new';
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Browser(),
                                      ),
                                    );
                                    TitleFastMenu.titleFastMenu =
                                        "Rincian Nilai";
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.deepOrange,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  height: 45,
                                  width: 45,
                                  child: const Icon(
                                    Icons.analytics_outlined,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                height: 40,
                                width: double.infinity,
                                child: const Text(
                                  "Rincian Nilai",
                                  style: TextStyle(fontSize: 12),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 100,
                          width: 85,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () async {
                                  setState(() {
                                    CurrentUrl.currentUrl =
                                        'https://student.amikompurwokerto.ac.id/pengumuman';
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => const Browser(),
                                      ),
                                    );
                                    TitleFastMenu.titleFastMenu =
                                        "Berita Akademik";
                                  });
                                },
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(50),
                                  ),
                                  height: 45,
                                  width: 45,
                                  child: const Icon(
                                    Icons.newspaper_rounded,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Container(
                                alignment: Alignment.topCenter,
                                height: 40,
                                width: double.infinity,
                                child: const Text(
                                  "Berita Akademik",
                                  style: TextStyle(fontSize: 12),
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 25.0, right: 25.0, top: 25.0),
              height: 160,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(horizontal: 25.0),
                    height: 55,
                    width: double.infinity,
                    child: const Text(
                      "Daftar Tugas",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(25),
              height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Column(
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    margin: const EdgeInsets.symmetric(horizontal: 25.0),
                    height: 55,
                    width: double.infinity,
                    child: const Text(
                      "Jadwal Kuliah",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(
            () {
              IndexPage.currentIndex = value;
            },
          );
          panggilHalaman(value);
        },
        currentIndex: IndexPage.currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: "Student",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.task),
            label: "Tugas",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Jadwal Kuliah",
          ),
        ],
      ),
    );
  }

  void panggilHalaman(int index) {
    if (index == 1) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const Browser(),
        ),
      );
      setState(
        () {
          CurrentUrl.currentUrl = 'https://student.amikompurwokerto.ac.id/main';
          TitleFastMenu.titleFastMenu = 'Web Student';
        },
      );
    } else if (index == 2) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const DaftarTugas(),
        ),
      );
    } else if (index == 3) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const JadwalKuliah(),
        ),
      );
    }
  }
}
