import 'package:flutter/material.dart';
import 'package:tampilanprofil/profilescreen.dart';
import 'package:tampilanprofil/services/session_serive.dart';

class ValidasiLogin extends StatefulWidget {
  const ValidasiLogin({super.key});

  @override
  State<ValidasiLogin> createState() => _ValidasiLoginState();
}

class _ValidasiLoginState extends State<ValidasiLogin> {
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController namaC = TextEditingController();

  String name = "User"; // contoh nilai default

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    namaC.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 240, 248, 255), // Very light blue
              Color.fromARGB(255, 220, 240, 255), // Light blue
            ],
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView( // biar tidak overflow di layar kecil
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Username Field
                  TextField(
                    controller: usernameController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Username',
                      hintText: 'Masukkan username',
                    ),
                  ),
                  const SizedBox(height: 20),

                  // Password Field
                  TextField(
                    controller: passwordController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Password',
                      hintText: 'Masukkan password',
                    ),
                    obscureText: true,
                  ),
                  const SizedBox(height: 20),

                  // Login Button
                  ElevatedButton(
                    onPressed: () {
                      setState(() {
                        name = usernameController.text;
                      });
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => ProfileScreen(
                            username: usernameController.text,
                          ),
                        ),
                      );
                    },
                    child: const Text('Login'),
                  ),

                  const SizedBox(height: 30),

                  // Bagian tambahan (child sebelumnya)
                  Column(
                    children: [
                      Text(
                        'Halo, $name!',
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      TextField(
                        controller: namaC,
                        decoration: InputDecoration(border: OutlineInputBorder()),
                      ),

                      const SizedBox(height: 10),
                      ElevatedButton(onPressed: () {
                        SessionService().simpanHalo(namaC.text);
                      }, child: const Text('Simpan')),
                      const SizedBox(height: 10),

                      ElevatedButton(
                        onPressed: () {
                          String hasil = SessionService().getDataHalo();
                          print(hasil);
                        },
                        child: const Text('Tampilkan di Terminal'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
