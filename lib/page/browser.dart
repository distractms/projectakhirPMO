import 'package:flutter/material.dart';
import 'package:project_akhir_prototype3/variabel/global_var.dart';
import 'package:webview_flutter/webview_flutter.dart';

WebViewController controller = WebViewController();

class Browser extends StatefulWidget {
  const Browser({super.key});

  @override
  State<Browser> createState() => _BrowserState();
}

class _BrowserState extends State<Browser> {
  @override
  void initState() {
    super.initState();
    controller = WebViewController()
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(NavigationDelegate(
        onPageStarted: (url) {
          setState(
            () {
              CurrentUrl.currentUrl = url;
            },
          );
          debugPrint('url: $url');
        },
      ))
      ..loadRequest(
        Uri.parse(CurrentUrl.currentUrl),
      );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () async {
            CurrentUrl.currentUrl = await controller.currentUrl() ?? '';
            setState(() {
              Navigator.pop(context);
            });
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: Text(TitleFastMenu.titleFastMenu),
      ),
      body: Stack(
        children: [
          SafeArea(
            child: WebViewWidget(
              controller: controller,
            ),
          ),
          // cek login pada web student
          if (CurrentUrl.currentUrl.toLowerCase() ==
                  'https://student.amikompurwokerto.ac.id/auth' ||
              CurrentUrl.currentUrl.toLowerCase() ==
                  'https://student.amikompurwokerto.ac.id/main/logout')
            Container(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 25,
                child: const DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.red,
                  ),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.warning,
                          color: Colors.white,
                          size: 16,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          'Silahkan Login Terlebih Dahulu',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            )
          else if (CurrentUrl.currentUrl.toLowerCase() ==
              'https://student.amikompurwokerto.ac.id/main')
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Colors.grey.shade900),
                  ),
                ),
                AlertDialog(
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                        // setting agar url sesuai
                        setState(() {
                          if (TitleFastMenu.titleFastMenu == "E-Presensi") {
                            CurrentUrl.currentUrl =
                                'https://student.amikompurwokerto.ac.id/presensi';
                          }
                          if (TitleFastMenu.titleFastMenu == "Rincian Nilai") {
                            CurrentUrl.currentUrl =
                                'https://student.amikompurwokerto.ac.id/rincian_nilai_new';
                          }
                          if (TitleFastMenu.titleFastMenu ==
                              "Berita Akademik") {
                            CurrentUrl.currentUrl =
                                'https://student.amikompurwokerto.ac.id/pengumuman';
                          }
                        });
                      },
                      child: const Text('Lanjutkan'),
                    ),
                  ],
                  title: const Text('Pilih Ulang Fast Menu'),
                  content: const SingleChildScrollView(
                    child: ListBody(
                      children: <Widget>[
                        Text('LOGIN BERHASIL !!'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
