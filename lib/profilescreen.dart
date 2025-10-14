import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key, this.username});
  final String? username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 231, 251),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 171, 46),
        title: Text("Profile Screen $username"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            CircleAvatar(
              radius: 75, 
                backgroundColor: Color.fromARGB(255, 255, 171, 46), 
                  child: CircleAvatar(
                    radius: 71, 
                      backgroundImage: AssetImage("assets/nyanko.jpg"), 
                ),
              ),
          Text(  "Amelia Flora Aprilianingrum", 
            textAlign: TextAlign.center, 
              style: TextStyle(
                fontSize: 20, 
                  fontWeight: FontWeight.bold, 
                    color: Color.fromARGB(255, 0, 0, 0),
              ),
          ),

          Row(
          
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            Icon(Icons.favorite),
            Icon(Icons.favorite), 
            Icon(Icons.favorite),

        TextButton(onPressed: () {
          Navigator.pop(context);
        }, child: Text("Back")),


          ],),
          Card(
            color: const Color.fromARGB(255, 255, 212, 121),
            child: ListTile(
              leading: Icon( Icons.person),
              title: Text("Nama Lengkap"),
              subtitle: Text("Amelia Flora Aprilianingrum"),
              trailing: Icon(Icons.arrow_circle_right),
            ),
          ),
          Card(
            color: const Color.fromARGB(255, 255, 212, 121),
            child: ListTile(
              leading: Icon( Icons.info),
              title: Text("Tentang Saya"),
              subtitle: Text("Saya adalah seorang mahasiswa Universitas Duta Bangsa Surakarta"),
              trailing: Icon(Icons.exit_to_app),
            ),
          ),
          Card(
            color: const Color.fromARGB(255, 255, 212, 121),
            child: ListTile(
              leading: Icon( Icons.phone),
              title: Text("Telepon"),
              subtitle: Text("082345678765"),
              trailing: Icon(Icons.call),
            ),
        ),
          Card(
            color: const Color.fromARGB(255, 255, 212, 121),
            child: ListTile(
              leading: Icon( Icons.home),
              title: Text("Alamat"),
              subtitle: Text("Jln. Slamet Riyadi No. 1 Surakarta"),
              trailing: Icon(Icons.map),
            ),
          ),
          Card(
            color: const Color.fromARGB(255, 255, 212, 121),
            child: ListTile(
              leading: Icon( Icons.email),
              title: Text("Email"),
              subtitle: Text("amelflora06@gmail.com"),
              trailing: Icon(Icons.send),
            ),
          ),
          Card(
            color: const Color.fromARGB(255, 255, 212, 121),
            child: ListTile(
              leading: Icon( Icons.school),
              title: Text("Universitas"),
              subtitle: Text("Universitas Duta Bangsa Surakarta"),
              trailing: Icon(Icons.account_balance),
            ),
          ),
          Card(
            color: const Color.fromARGB(255, 255, 212, 121),
            
            child: ListTile(
              leading: Icon( Icons.cake),
              title: Text("Tanggal Lahir"),
              subtitle: Text("6 April 2003"),
              trailing: Icon(Icons.calendar_month),
            ),
          )
          ],
          ),
      ),
    );
  }
}
