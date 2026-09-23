  import 'package:flutter/material.dart';
  import '../widgets/footer_navigasi.dart';

  class DataSekolah extends StatefulWidget {
    const DataSekolah({super.key});

    @override
    State<DataSekolah> createState() => _DataSekolahState();
  }

  class _DataSekolahState extends State<DataSekolah> {
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
                        Icons.school,
                        color: Colors.white,
                        size: 45,
                      ),
                    ),

                    const SizedBox(height: 15),

                    const Text(
                      "Data Sekolah",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 7),

                    const Text(
                      "Kelola informasi data sekolah",
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
                                    "Form Data Sekolah",
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(height: 3),
                                  Text(
                                    "Lengkapi informasi sekolah",
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

                          // ================= NPSN =================
                          const Text(
                            "NPSN",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),

                          const SizedBox(height: 8),

                          TextField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              hintText: "Contoh: 20512345",
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

                          // ================= NAMA SEKOLAH =================
                          const Text(
                            "Nama Sekolah",
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),

                          const SizedBox(height: 8),

                          TextField(
                            decoration: InputDecoration(
                              hintText: "Contoh: SMK Negeri 2 Kraksaan",
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
                              hintText: "Masukkan alamat sekolah",
                              prefixIcon: Padding(
                                padding: const EdgeInsets.only(
                                  bottom: 45,
                                ),
                                child: Container(
                                  margin: const EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                    color: Colors.green.shade50,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: const Icon(
                                    Icons.location_on_outlined,
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

                          const SizedBox(height: 20),

                          // ================= NO TELP =================
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
                              hintText: "Contoh: 0335-123456",
                              prefixIcon: Container(
                                margin: const EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  color: Colors.purple.shade50,
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: const Icon(
                                  Icons.phone_outlined,
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
                                    "Pastikan NPSN, nama sekolah, alamat, dan nomor telepon sudah benar sebelum menyimpan.",
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