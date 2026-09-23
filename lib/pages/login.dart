import 'package:flutter/material.dart';
import '../widgets/footer_navigasi.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool sudahSelesai = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ================= LOGO =================
            Container(
              padding: const EdgeInsets.all(30),
              child: Center(
                child: Image.asset(
                  "images/logo.png",
                ),
              ),
            ),

            // ================= JUDUL =================
            const Text(
              "Welcome to",
              style: TextStyle(
                color: Colors.orangeAccent,
                fontWeight: FontWeight.bold,
              ),
            ),

            const Text(
              "SMK Negeri 2 Kraksaan",
              style: TextStyle(
                color: Colors.orangeAccent,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 40),

            const Text(
              "Please Log In to continue",
            ),

            const SizedBox(height: 10),

            // ================= FORM LOGIN =================
            Container(
              padding: const EdgeInsets.all(40),
              child: Column(
                children: [
                  // USERNAME
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Username",
                      hintText: "Masukan username",
                    ),
                  ),

                  const SizedBox(height: 10),

                  // PASSWORD
                  TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      labelText: "Password",
                      hintText: "Masukan Password",
                    ),
                  ),
                ],
              ),
            ),

            // ================= LOGIN =================
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                fixedSize: const Size(200, 50),
              ),
              onPressed: () {
                setState(() {
                  sudahSelesai = true;
                });

                Navigator.pushNamed(
                  context,
                  "/beranda",
                );
              },
              child: const Text(
                "Login",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            // ================= DAFTAR =================
            TextButton(
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  "/register",
                );
              },
              child: const Text(
                "Daftar Disini",
                style: TextStyle(
                  color: Color.fromARGB(255, 9, 5, 238),
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),

      // ================= FOOTER NAVIGASI =================
      bottomNavigationBar: FooterNavigasi(
        routeBerikutnya: "/beranda",
      ),
    );
  }
}
