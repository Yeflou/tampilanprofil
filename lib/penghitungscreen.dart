import 'package:flutter/material.dart';
import 'profilescreen.dart';

class PenghitungScreen extends StatefulWidget {
  const PenghitungScreen({super.key});

  @override
  State<PenghitungScreen> createState() => _PenghitungScreenState();
}


class _PenghitungScreenState extends State<PenghitungScreen> {
int nilai = 0;

menghitung(){
  setState(() {
    
  });
  nilai = nilai + 1;
    print("INI NILAI $nilai");
  }

pindahHalaman(){
 Navigator.of(context).push(MaterialPageRoute(builder: (context) => profilescreen())); 
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
            TextButton(onPressed: (){
              pindahHalaman();
            }, child: Text("Pindah page"),)
          ],
        ),
      ),
    );
  }
}