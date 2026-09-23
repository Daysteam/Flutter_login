import "package:flutter/material.dart";
import "../widgets/footer_navigasi.dart";

class Biodata extends StatelessWidget {
  const Biodata({super.key});

  // Data daftar gambar disimpan dalam list agar kode lebih rapi
  static const List<Map<String, dynamic>> _imageList = [
    {"path": "images/1.png", "fit": BoxFit.cover},
    {"path": "images/Algoritma1.png", "fit": BoxFit.contain},
    {"path": "images/Algoritma2.png", "fit": BoxFit.contain},
    {"path": "images/Algoritma3.png", "fit": BoxFit.contain},
    {"path": "images/Algoritma4.png", "fit": BoxFit.contain},
    {"path": "images/Algoritma5.png", "fit": BoxFit.contain},
    {"path": "images/Algoritma6.png", "fit": BoxFit.contain},
    {"path": "images/Algoritma7.png", "fit": BoxFit.contain},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SizedBox(height: 40),

            Image.asset(
              'images/logo.png',
              height: 80,
              errorBuilder: (context, error, stackTrace) => const Icon(
                Icons.school,
                size: 80,
                color: Colors.orange,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Biodata",
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Serif",
                height: 1.5,
                color: Colors.orange,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 20),

            // ================= BARIS GAMBAR 1 =================
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildImageCard(_imageList[0]["path"], _imageList[0]["fit"]),
                _buildImageCard(_imageList[1]["path"], _imageList[1]["fit"]),
                _buildImageCard(_imageList[2]["path"], _imageList[2]["fit"]),
                _buildImageCard(_imageList[3]["path"], _imageList[3]["fit"]),
              ],
            ),

            const SizedBox(height: 20),

            // ================= BARIS GAMBAR 2 =================
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                _buildImageCard(_imageList[4]["path"], _imageList[4]["fit"]),
                _buildImageCard(_imageList[5]["path"], _imageList[5]["fit"]),
                _buildImageCard(_imageList[6]["path"], _imageList[6]["fit"]),
                _buildImageCard(_imageList[7]["path"], _imageList[7]["fit"]),
              ],
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),

      // ================= FOOTER NAVIGASI =================
      bottomNavigationBar: const FooterNavigasi(
        routeBerikutnya: '/beranda',
      ),
    );
  }

  // Helper Widget untuk membuat kotak gambar
  Widget _buildImageCard(String imagePath, BoxFit fitMode) {
    return Container(
      width: 80,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black26,
          style: BorderStyle.solid,
          width: 1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Center(
        child: Image.asset(
          imagePath,
          fit: fitMode,
          errorBuilder: (context, error, stackTrace) => const Icon(
            Icons.image_not_supported,
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}