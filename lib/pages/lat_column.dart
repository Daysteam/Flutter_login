import "package:flutter/material.dart";
import '../widgets/footer_navigasi.dart';

class HalKolom extends StatefulWidget {
  const HalKolom({super.key});

  @override
  State<HalKolom> createState() => _HalKolomState();
}

class _HalKolomState extends State<HalKolom> {
  bool sudahSelesai = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SMK 2 KRAKSAAN"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 136, 81, 239),
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              width: 50,
              height: 50,
              color: Colors.red,
              child: const Center(
                child: Text('Kotak 1'),
              ),
            ),
            Container(
              width: 75,
              height: 75,
              color: Colors.green,
              child: const Center(
                child: Text('Kotak 2'),
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: Colors.blue,
              child: const Center(
                child: Text('Kotak 3'),
              ),
            ),
            Container(
              width: 150,
              height: 150,
              color: Colors.blueGrey,
              child: const Center(
                child: Text('Kotak 4'),
              ),
            ),

            // Tombol untuk menandai materi selesai
            ElevatedButton(
              onPressed: () {
                setState(() {
                  sudahSelesai = true;
                });
              },
              child: const Text("Tandai Selesai"),
            ),
          ],
        ),
      ),

      // ================= FOOTER NAVIGASI =================
      bottomNavigationBar: FooterNavigasi(),
    );
  }
}