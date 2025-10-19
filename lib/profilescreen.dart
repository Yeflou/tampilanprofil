import 'package:flutter/material.dart';
import 'editprofil.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key, this.username});
  final String? username;

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // Data profil yang bisa diubah
  Map<String, String> _profileData = {
    'nama': 'Amelia Flora Aprilianingrum',
    'tentang': 'Saya adalah seorang mahasiswa Universitas Duta Bangsa Surakarta',
    'telepon': '082345678765',
    'alamat': 'Jln. Slamet Riyadi No. 1 Surakarta',
    'email': 'amelflora06@gmail.com',
    'universitas': 'Universitas Duta Bangsa Surakarta',
    'tanggal': '6 April 2003',
  };

  void _updateProfile(Map<String, String> newData) {
    setState(() {
      _profileData = newData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 231, 251),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 171, 46),
        title: Text("Profile Screen ${widget.username}"),
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
          Text(  _profileData['nama']!, 
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
              subtitle: Text(_profileData['nama']!),
              trailing: Icon(Icons.arrow_circle_right),
            ),
          ),
          Card(
            color: const Color.fromARGB(255, 255, 212, 121),
            child: ListTile(
              leading: Icon( Icons.info),
              title: Text("Tentang Saya"),
              subtitle: Text(_profileData['tentang']!),
              trailing: Icon(Icons.exit_to_app),
            ),
          ),
          Card(
            color: const Color.fromARGB(255, 255, 212, 121),
            child: ListTile(
              leading: Icon( Icons.phone),
              title: Text("Telepon"),
              subtitle: Text(_profileData['telepon']!),
              trailing: Icon(Icons.call),
            ),
        ),
          Card(
            color: const Color.fromARGB(255, 255, 212, 121),
            child: ListTile(
              leading: Icon( Icons.home),
              title: Text("Alamat"),
              subtitle: Text(_profileData['alamat']!),
              trailing: Icon(Icons.map),
            ),
          ),
          Card(
            color: const Color.fromARGB(255, 255, 212, 121),
            child: ListTile(
              leading: Icon( Icons.email),
              title: Text("Email"),
              subtitle: Text(_profileData['email']!),
              trailing: Icon(Icons.send),
            ),
          ),
          Card(
            color: const Color.fromARGB(255, 255, 212, 121),
            child: ListTile(
              leading: Icon( Icons.school),
              title: Text("Universitas"),
              subtitle: Text(_profileData['universitas']!),
              trailing: Icon(Icons.account_balance),
            ),
          ),
          Card(
            color: const Color.fromARGB(255, 255, 212, 121),
            
            child: ListTile(
              leading: Icon( Icons.cake),
              title: Text("Tanggal Lahir"),
              subtitle: Text(_profileData['tanggal']!),
              trailing: Icon(Icons.calendar_month),
            ),
          ),
          SizedBox(height: 20),
          
          // Tombol Edit Profil
          Container(
            width: double.infinity,
            height: 50,
            child: ElevatedButton.icon(
              onPressed: () async {
                await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EditProfil(
                      initialData: _profileData,
                      onSave: _updateProfile,
                    ),
                  ),
                );
              },
              icon: Icon(Icons.edit, color: Colors.white),
              label: Text(
                "Edit Profil",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 171, 46),
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          ],
          ),
      ),
    );
  }
}
