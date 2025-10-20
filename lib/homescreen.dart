import 'package:flutter/material.dart';
import 'profilescreen.dart';
import 'penghitungscreen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
        backgroundColor: Color(0xFF0046FF),// Light blue
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Container(
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
                children: <Widget>[
                  const Icon(
                    Icons.home,
                    size: 80,
                    color: Color.fromARGB(255, 100, 149, 237), // Cornflower blue
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Selamat Datang!',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 70, 130, 180), // Steel blue
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Pilih menu di bawah untuk melanjutkan',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(255, 100, 149, 237),
                    ),
                  ),
                ],
              ),
            ),
          ),
          // Floating Navigation Bar
          Positioned(
            left: 20,
            right: 20,
            bottom: 20,
            child: Container(
              height: 60,
              decoration: BoxDecoration(
                color: Color(0xFF0046FF),
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 15,
                    offset: const Offset(0, 5),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // Menu Home (Active)
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 4,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        const SizedBox(height: 4),
                        Icon(
                          Icons.home,
                          size: 20,
                          color: Colors.white,
                        ),
                        const SizedBox(height: 2),
                        const Text(
                          'Home',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Menu Profil
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ProfileScreen(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 4),
                          Icon(
                            Icons.person,
                            size: 20,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 2),
                          const Text(
                            'Profil',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  // Menu Penghitung
                  Expanded(
                    child: InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const PenghitungScreen(),
                          ),
                        );
                      },
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const SizedBox(height: 4),
                          Icon(
                            Icons.calculate,
                            size: 20,
                            color: Colors.white,
                          ),
                          const SizedBox(height: 2),
                          const Text(
                            'Hitung',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
