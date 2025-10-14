import 'package:flutter/material.dart';
import 'profilescreen.dart';

class PenghitungScreen extends StatefulWidget {
  const PenghitungScreen({super.key});

  @override
  State<PenghitungScreen> createState() => _PenghitungScreenState();
}

class _PenghitungScreenState extends State<PenghitungScreen> {
  int nilai = 0;

  void menghitung() {
    setState(() {
      nilai++;
    });
  }

  void pindahHalaman() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const ProfileScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 212, 121),
      appBar: AppBar(
        title: const Text('Penghitung Screen'),
        backgroundColor: const Color.fromARGB(255, 255, 171, 46),

        // penting banget: biar tombol back muncul
        automaticallyImplyLeading: true, 
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hitung: $nilai',
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: menghitung,
              child: const Text('Tambah Hitungan'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: pindahHalaman,
              child: const Text('Pindah ke Halaman Profile'),
            ),
          ],
        ),
      ),
    );
  }
}
