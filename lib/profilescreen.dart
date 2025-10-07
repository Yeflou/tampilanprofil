import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 99, 242, 255),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 6, 66, 196),
        title: Text("Profile"),
      ),
      body: Center(
        child: ListView(
          children: [
           Image.asset("assets/nyanko.jpg", 
           height: 200,),
          Text("Nama", style:TextStyle(fontSize: 30, color: const Color.fromARGB(255, 117, 103, 125)),),
          Text("Alamat"),
          Row(
          
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(Icons.favorite),
            Icon(Icons.favorite), 
            Icon(Icons.favorite),


          ],),
          Card(
            child: ListTile(
              leading: Icon( Icons.home),
              title: Text("alamat"),
              subtitle: Text("Arabasta"),
              trailing: Icon(Icons.arrow_circle_right),
            ),
          ),
          Card(
            child: ListTile(
              leading: Icon( Icons.local_pizza),
              title: Text("logout"),
              subtitle: Text("Arabasta"),
              trailing: Icon(Icons.exit_to_app),
            ),
          )
          
          ],
          ),
      ),
    );
  }
}
