import 'package:flutter/material.dart';
import '../widgets/footer_navigasi.dart';

class Beranda extends StatelessWidget {
  const Beranda({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Beranda"),
        centerTitle: true,
        automaticallyImplyLeading: false, // Menghapus tombol back bawaan AppBar
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _menuItem(
                    context,
                    icon: Icons.groups,
                    title: "Data Siswa",
                    route: "/datasiswa",
                  ),
                  _menuItem(
                    context,
                    icon: Icons.school,
                    title: "Data Sekolah",
                    route: "/datasekolah",
                  ),
                  _menuItem(
                    context,
                    icon: Icons.engineering,
                    title: "Data Konsentrasi",
                    route: "/datakk",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),

      // ================= FOOTER =================
      bottomNavigationBar: const FooterNavigasi(
        // routeBerikutnya tidak diisi karena ini halaman menu utama
        routeBerikutnya: null,
      ),
    );
  }

  // ================= MENU ITEM =================
  Widget _menuItem(
    BuildContext context, {
    required IconData icon,
    required String title,
    required String route,
  }) {
    return InkWell(
      borderRadius: BorderRadius.circular(15),
      onTap: () {
        Navigator.pushNamed(context, route);
      },
      child: SizedBox(
        width: 95,
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: Colors.orange.shade100,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Icon(
                icon,
                size: 40,
                color: Colors.orange,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}