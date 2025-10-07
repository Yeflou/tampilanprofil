import 'package:flutter/material.dart';

class penghitungscreen extends StatefulWidget {
  const penghitungscreen({super.key});

  @override
  State<penghitungscreen> createState() => _penghitungscreenState();
}

class _penghitungscreenState extends State<penghitungscreen> {
int nilai = 0;

menghitung(){
  setState(() {
    
  });
  nilai = nilai + 1;
    print("INI NILAI $nilai");
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.cyanAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("hitung $nilai"),
            ElevatedButton(onPressed: (){
              menghitung();
            }, child: Text("Hitung"),),
          ],
        ),
      ),
    );
  }
}