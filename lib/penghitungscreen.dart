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
      appBar: AppBar(
        title: const Text('Penghitung Screen'),
        backgroundColor: Color(0xFF0046FF),// Light blue
        foregroundColor: Colors.white,
      ),
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
      ),
    );
  }
}
