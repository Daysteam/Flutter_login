import 'package:flutter/material.dart';
import '../widgets/footer_navigasi.dart';

class DataSiswa extends StatefulWidget {
  const DataSiswa({super.key});

  @override
  State<DataSiswa> createState() => _DataSiswaState();
}

class _DataSiswaState extends State<DataSiswa> {
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
                      Icons.person,
                      color: Colors.white,
                      size: 45,
                    ),
                  ),

                  const SizedBox(height: 15),

                  const Text(
                    "Data Siswa",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 7),

                  const Text(
                    "Kelola informasi data siswa",
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
                                  "Form Data Siswa",
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(height: 3),

                                Text(
                                  "Lengkapi informasi siswa",
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

                        // ================= NIS =================
                        const Text(
                          "NIS",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),

                        const SizedBox(height: 8),

                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Masukkan NIS",
                            prefixIcon: Container(
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.blue.shade50,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.numbers,
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

                        // ================= NAMA =================
                        const Text(
                          "Nama",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),

                        const SizedBox(height: 8),

                        TextField(
                          decoration: InputDecoration(
                            hintText: "Masukkan nama lengkap",
                            prefixIcon: Container(
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.orange.shade50,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.person_outline,
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

                        const SizedBox(height: 20),

                        // ================= TEMPAT LAHIR =================
                        const Text(
                          "Tempat Lahir",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),

                        const SizedBox(height: 8),

                        TextField(
                          decoration: InputDecoration(
                            hintText: "Masukkan tempat lahir",
                            prefixIcon: Container(
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.green.shade50,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.location_city_outlined,
                                color: Colors.green,
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
                                color: Colors.green,
                                width: 2,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // ================= TANGGAL LAHIR =================
                        const Text(
                          "Tanggal Lahir",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),

                        const SizedBox(height: 8),

                        TextField(
                          decoration: InputDecoration(
                            hintText: "Contoh: 20-08-2008",
                            prefixIcon: Container(
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.purple.shade50,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.calendar_today_outlined,
                                color: Colors.purple,
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
                                color: Colors.purple,
                                width: 2,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // ================= SEMESTER =================
                        const Text(
                          "Semester",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),

                        const SizedBox(height: 8),

                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Masukkan semester",
                            prefixIcon: Container(
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.teal.shade50,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.school_outlined,
                                color: Colors.teal,
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
                                color: Colors.teal,
                                width: 2,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // ================= JENIS KELAMIN =================
                        const Text(
                          "Jenis Kelamin",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),

                        const SizedBox(height: 8),

                        TextField(
                          decoration: InputDecoration(
                            hintText: "Contoh: Laki-laki / Perempuan",
                            prefixIcon: Container(
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.pink.shade50,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.wc_outlined,
                                color: Colors.pink,
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
                                color: Colors.pink,
                                width: 2,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // ================= NO TELEPON =================
                        const Text(
                          "No. Telepon",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),

                        const SizedBox(height: 8),

                        TextField(
                          keyboardType: TextInputType.phone,
                          decoration: InputDecoration(
                            hintText: "Masukkan nomor telepon",
                            prefixIcon: Container(
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.indigo.shade50,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.phone_outlined,
                                color: Colors.indigo,
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
                                color: Colors.indigo,
                                width: 2,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // ================= KONSENTRASI KEAHLIAN =================
                        const Text(
                          "Konsentrasi Keahlian",
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
                                color: Colors.cyan.shade50,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.computer_outlined,
                                color: Colors.cyan,
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
                                color: Colors.cyan,
                                width: 2,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // ================= KELAS =================
                        const Text(
                          "Kelas",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),

                        const SizedBox(height: 8),

                        TextField(
                          decoration: InputDecoration(
                            hintText: "Contoh: XI RPL 1",
                            prefixIcon: Container(
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.amber.shade50,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.class_outlined,
                                color: Colors.amber,
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
                                color: Colors.amber,
                                width: 2,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // ================= USIA =================
                        const Text(
                          "Usia",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),

                        const SizedBox(height: 8),

                        TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                            hintText: "Masukkan usia",
                            prefixIcon: Container(
                              margin: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                color: Colors.red.shade50,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              child: const Icon(
                                Icons.cake_outlined,
                                color: Colors.red,
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
                                color: Colors.red,
                                width: 2,
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(height: 20),

                        // ================= ALAMAT =================
                        const Text(
                          "Alamat",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),

                        const SizedBox(height: 8),

                        TextField(
                          maxLines: 3,
                          decoration: InputDecoration(
                            hintText: "Masukkan alamat lengkap",
                            prefixIcon: Padding(
                              padding: const EdgeInsets.only(bottom: 45),
                              child: Container(
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.green.shade50,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Icon(
                                  Icons.home_outlined,
                                  color: Colors.green,
                                  size: 20,
                                ),
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
                                color: Colors.green,
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
                                  "Pastikan NIS, nama, tanggal lahir, kelas, dan data siswa lainnya sudah benar sebelum menyimpan.",
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

                        // ================= BUTTON =================
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
                                      content: Text(
                                        "Data siswa berhasil disimpan",
                                      ),
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