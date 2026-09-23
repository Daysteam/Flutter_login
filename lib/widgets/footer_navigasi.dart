import 'package:flutter/material.dart';

class FooterNavigasi extends StatelessWidget {
  final String? routeBerikutnya;

  const FooterNavigasi({
    super.key,
    this.routeBerikutnya,
  });

  @override
  Widget build(BuildContext context) {
    // Memeriksa apakah ada halaman di bawah halaman ini pada tumpukan (stack)
    final bool bisaMundur = Navigator.canPop(context);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(
          top: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // =========================================================
          // TOMBOL SEBELUMNYA (BACK)
          // Menggunakan Navigator.pop untuk menghapus halaman saat ini
          // =========================================================
          ElevatedButton.icon(
            onPressed: bisaMundur
                ? () {
                    Navigator.pop(context); // Melepas halaman saat ini
                  }
                : null, // Otomatis nonaktif jika ini halaman paling awal
            icon: const Icon(Icons.arrow_back),
            label: const Text("Sebelumnya"),
          ),

          // =========================================================
          // TOMBOL LANJUT (NEXT)
          // Menggunakan Navigator.pushNamed untuk menumpuk halaman baru
          // =========================================================
          ElevatedButton.icon(
            iconAlignment: IconAlignment.end,
            onPressed: routeBerikutnya != null
                ? () {
                    Navigator.pushNamed(
                      context,
                      routeBerikutnya!,
                    ); // Menumpuk halaman baru di atas halaman saat ini
                  }
                : null, // Otomatis nonaktif jika tidak ada route berikutnya
            icon: const Icon(Icons.arrow_forward),
            label: const Text("Lanjut"),
          ),
        ],
      ),
    );
  }
}