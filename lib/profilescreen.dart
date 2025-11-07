import 'package:flutter/material.dart';
import 'editprofil.dart';
import 'dart:io';

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
  
  File? _profileImage;

  void _updateProfile(Map<String, String> newData, {File? profileImage}) {
    setState(() {
      _profileData = newData;
      if (profileImage != null) {
        _profileImage = profileImage;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: const Text('Profile Screen'),
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
          children: [
            CircleAvatar(
              radius: 75, 
                backgroundColor: Color(0xFF0046FF),
                  child: CircleAvatar(
                    radius: 71, 
                      backgroundImage: _profileImage != null 
                        ? FileImage(_profileImage!)
                        : AssetImage("assets/nyanko.jpg") as ImageProvider,
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
            color: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: Colors.grey.shade300,
                width: 1,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade400, width: 1),
                  right: BorderSide(color: Colors.grey.shade400, width: 1),
                ),
              ),
              child: ListTile(
                leading: Icon(Icons.person, color: Color(0xFF0046FF)),
                title: Text("Nama Lengkap", style: TextStyle(fontWeight: FontWeight.w600)),
                subtitle: Text(_profileData['nama']!),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: Colors.grey.shade300,
                width: 1,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade400, width: 1),
                  right: BorderSide(color: Colors.grey.shade400, width: 1),
                ),
              ),
              child: ListTile(
                leading: Icon(Icons.info, color: Color(0xFF0046FF)),
                title: Text("Tentang Saya", style: TextStyle(fontWeight: FontWeight.w600)),
                subtitle: Text(_profileData['tentang']!),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: Colors.grey.shade300,
                width: 1,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade400, width: 1),
                  right: BorderSide(color: Colors.grey.shade400, width: 1),
                ),
              ),
              child: ListTile(
                leading: Icon(Icons.phone, color: Color(0xFF0046FF)),
                title: Text("Telepon", style: TextStyle(fontWeight: FontWeight.w600)),
                subtitle: Text(_profileData['telepon']!),
              ),
            ),
          ),
          Card(
            color: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: Colors.grey.shade300,
                width: 1,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade400, width: 1),
                  right: BorderSide(color: Colors.grey.shade400, width: 1),
                ),
              ),
              child: ListTile(
                leading: Icon(Icons.home, color: Color(0xFF0046FF)),
                title: Text("Alamat", style: TextStyle(fontWeight: FontWeight.w600)),
                subtitle: Text(_profileData['alamat']!),

              ),
            ),
          ),
          Card(
            color: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: Colors.grey.shade300,
                width: 1,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade400, width: 1),
                  right: BorderSide(color: Colors.grey.shade400, width: 1),
                ),
              ),
              child: ListTile(
                leading: Icon(Icons.email, color: Color(0xFF0046FF)),
                title: Text("Email", style: TextStyle(fontWeight: FontWeight.w600)),
                subtitle: Text(_profileData['email']!),
                 ),
            ),
          ),
          Card(
            color: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: Colors.grey.shade300,
                width: 1,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade400, width: 1),
                  right: BorderSide(color: Colors.grey.shade400, width: 1),
                ),
              ),
              child: ListTile(
                leading: Icon(Icons.school, color: Color(0xFF0046FF)),
                title: Text("Universitas", style: TextStyle(fontWeight: FontWeight.w600)),
                subtitle: Text(_profileData['universitas']!),
                ),
            ),
          ),
          Card(
            color: Colors.white,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(
                color: Colors.grey.shade300,
                width: 1,
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border(
                  bottom: BorderSide(color: Colors.grey.shade400, width: 1),
                  right: BorderSide(color: Colors.grey.shade400, width: 1),
                ),
              ),
              child: ListTile(
                leading: Icon(Icons.cake, color: Color(0xFF0046FF)),
                title: Text("Tanggal Lahir", style: TextStyle(fontWeight: FontWeight.w600)),
                subtitle: Text(_profileData['tanggal']!),
                ),
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
                backgroundColor: Color(0xFF0046FF),
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
      ),
    );
  }
}
