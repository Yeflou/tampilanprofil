import 'package:flutter/material.dart';
import 'profilescreen.dart';      // Pastikan ada file ini
import 'penghitungscreen.dart';  // Pastikan ada file ini

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: const Color.fromARGB(255, 255, 212, 121),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Pilih Halaman:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),

            // TOMBOL 1: KE PROFILE SCREEN (Kode Navigasi Langsung)
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(), // Pindah ke ProfileScreen
                  ),
                );
              },
              child: const Text('Buka Profil'),
            ),
            const SizedBox(height: 10),

            // TOMBOL 2: KE PENGHITUNG SCREEN (Kode Navigasi Langsung)
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => const PenghitungScreen(), // Pindah ke PenghitungScreen
                  ),
                );
              },
              child: const Text('Buka Penghitung'),
            ),
          ],
        ),
      ),
    );
  }
}