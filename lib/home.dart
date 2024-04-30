import 'package:flutter/material.dart';
import 'package:project_akhir_prototype3/page/browser.dart';
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
        actions: [
          // Indikator status login web student
          Container(
            margin: const EdgeInsets.only(
              right: 10,
            ),
            width: 15,
            height: 15,
            color: CurrentUrl.currentUrl.toLowerCase() ==
                    'https://student.amikompurwokerto.ac.id/auth'
                ? Colors.red
                : Colors.green,
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(15.0),
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                if (CurrentUrl.currentUrl !=
                                        "https://student.amikompurwokerto.ac.id/presensi" &&
                                    TitleFastMenu.titleFastMenu ==
                                        "https://student.amikompurwokerto.ac.id/presensi") {
                                  CurrentUrl.currentUrl ==
                                      await controller.currentUrl();
                                } else {
                                  CurrentUrl.currentUrl =
                                      'https://student.amikompurwokerto.ac.id/presensi';
                                }
                                setState(() {
                                  CurrentUrl.currentUrl;
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
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                height: 45,
                                width: 45,
                                child: const Icon(
                                  Icons.checklist,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                if (CurrentUrl.currentUrl !=
                                        "https://student.amikompurwokerto.ac.id/rincian_nilai_new" &&
                                    TitleFastMenu.titleFastMenu ==
                                        "https://student.amikompurwokerto.ac.id/rincian_nilai_new") {
                                  CurrentUrl.currentUrl ==
                                      await controller.currentUrl();
                                } else {
                                  CurrentUrl.currentUrl =
                                      'https://student.amikompurwokerto.ac.id/rincian_nilai_new';
                                }
                                setState(() {
                                  CurrentUrl.currentUrl;
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const Browser(),
                                    ),
                                  );
                                  TitleFastMenu.titleFastMenu = "Rincian Nilai";
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
                                  Icons.credit_score,
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
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () async {
                                if (CurrentUrl.currentUrl !=
                                        "https://student.amikompurwokerto.ac.id/pengumuman" &&
                                    TitleFastMenu.titleFastMenu ==
                                        "https://student.amikompurwokerto.ac.id/pengumuman") {
                                  CurrentUrl.currentUrl ==
                                      await controller.currentUrl();
                                } else {
                                  CurrentUrl.currentUrl =
                                      'https://student.amikompurwokerto.ac.id/pengumuman';
                                }
                                setState(() {
                                  CurrentUrl.currentUrl;
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
                                  Icons.newspaper,
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
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (value) {},
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: "Dashboard",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: "ELLS",
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
}
