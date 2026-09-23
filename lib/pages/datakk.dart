import 'package:flutter/material.dart';
import '../widgets/footer_navigasi.dart';

class DataKK extends StatefulWidget {
  const DataKK({super.key});

  @override
  State<DataKK> createState() => _DataKKState();
}

class _DataKKState extends State<DataKK> {
  bool sudahSelesai = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F7FB),
      // ================= BODY =================
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ================= HEADER =================
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(25, 25, 25, 35),
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(35),
                  bottomRight: Radius.circular(35),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: 85,
                    height: 85,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.18),
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.engineering,
                      color: Colors.white,
                      size: 45,
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    "Konsentrasi Keahlian",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 7),

                  const Text(
                    "Kelola data konsentrasi keahlian sekolah",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),

            // ================= FORM CARD =================
            Transform.translate(
              offset: const Offset(0, -20),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Card(
                  elevation: 5,
                  shadowColor: Colors.black26,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // ================= JUDUL FORM =================
                        Row(
                          children: [
                            Container(
                              width: 42,
                              height: 42,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: const Icon(
                                Icons.edit_note,
                                color: Colors.blue,
                                size: 25,
                              ),
                            ),

                            const SizedBox(width: 12),

                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Form Data",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Lengkapi informasi berikut",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),

                        const SizedBox(height: 25),

                        // ================= ID KK =================
                        const Text(
                          "ID Konsentrasi Keahlian",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),

                        const SizedBox(height: 8),

                        TextField(
                          decoration: InputDecoration(
                            hintText: "Contoh: KK001",
                            prefixIcon: Container(
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.badge_outlined,
                                color: Colors.blue,
                                size: 20,
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.grey.shade50,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.blue,
                                width: 2,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // ================= NAMA KK =================
                        const Text(
                          "Nama Konsentrasi Keahlian",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),

                        const SizedBox(height: 8),

                        TextField(
                          decoration: InputDecoration(
                            hintText: "Contoh: Rekayasa Perangkat Lunak",
                            prefixIcon: Container(
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.orange.shade50,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.school_outlined,
                                color: Colors.orange,
                                size: 20,
                              ),
                            ),
                            filled: true,
                            fillColor: Colors.grey.shade50,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide.none,
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: const BorderSide(
                                color: Colors.orange,
                                width: 2,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 25),

                        // ================= INFO =================
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            color: Colors.blue.shade50,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: const Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.info_outline,
                                color: Colors.blue,
                                size: 20,
                              ),
                              SizedBox(width: 10),
                              Expanded(
                                child: Text(
                                  "Pastikan ID dan nama konsentrasi keahlian sudah benar sebelum menyimpan data.",
                                  style: TextStyle(
                                    color: Colors.blue,
                                    fontSize: 12,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        const SizedBox(height: 25),

                        // ================= BUTTON SIMPAN & BATAL =================
                        Row(
                          children: [
                            // SIMPAN
                            Expanded(
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  setState(() {
                                    sudahSelesai = true;
                                  });

                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text("Data berhasil disimpan! Tombol lanjut di footer sekarang aktif."),
                                      backgroundColor: Colors.green,
                                    ),
                                  );
                                },
                                icon: const Icon(
                                  Icons.save_outlined,
                                  color: Colors.white,
                                ),
                                label: const Text(
                                  "Simpan",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.blue,
                                  elevation: 2,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 15,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),

                            const SizedBox(width: 12),

                            // BATAL
                            Expanded(
                              child: OutlinedButton.icon(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.close,
                                  size: 20,
                                ),
                                label: const Text(
                                  "Batal",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: OutlinedButton.styleFrom(
                                  foregroundColor: Colors.red,
                                  padding: const EdgeInsets.symmetric(
                                    vertical: 15,
                                  ),
                                  side: const BorderSide(
                                    color: Colors.red,
                                  ),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // ================= FOOTER NAVIGASI =================
      bottomNavigationBar: FooterNavigasi(),
    );
  }
}