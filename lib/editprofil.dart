import 'package:flutter/material.dart';

class EditProfil extends StatefulWidget {
  const EditProfil({
    super.key,
    required this.initialData,
    required this.onSave,
  });

  final Map<String, String> initialData;
  final Function(Map<String, String>) onSave;

  @override
  State<EditProfil> createState() => _EditProfilState();
}

class _EditProfilState extends State<EditProfil> {
  final _formKey = GlobalKey<FormState>();
  late final _controllers = {
    'nama': TextEditingController(text: widget.initialData['nama']),
    'tentang': TextEditingController(text: widget.initialData['tentang']),
    'telepon': TextEditingController(text: widget.initialData['telepon']),
    'alamat': TextEditingController(text: widget.initialData['alamat']),
    'email': TextEditingController(text: widget.initialData['email']),
    'universitas': TextEditingController(text: widget.initialData['universitas']),
    'tanggal': TextEditingController(text: widget.initialData['tanggal']),
  };

  @override
  void dispose() {
    _controllers.values.forEach((controller) => controller.dispose());
    super.dispose();
  }

  void _saveProfile() {
    if (_formKey.currentState!.validate()) {
      // Kumpulkan data yang telah diubah
      Map<String, String> updatedData = {};
      _controllers.forEach((key, controller) {
        updatedData[key] = controller.text;
      });
      
      // Panggil callback untuk mengupdate data di ProfileScreen
      widget.onSave(updatedData);
      
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Profil berhasil disimpan!"),
          backgroundColor: Colors.green,
        ),
      );
      Navigator.pop(context);
    }
  }

  final _formFields = [
    {'key': 'nama', 'label': 'Nama Lengkap', 'icon': Icons.person, 'required': true},
    {'key': 'tentang', 'label': 'Tentang Saya', 'icon': Icons.info, 'required': true, 'maxLines': 3},
    {'key': 'telepon', 'label': 'Telepon', 'icon': Icons.phone, 'required': true, 'type': TextInputType.phone},
    {'key': 'alamat', 'label': 'Alamat', 'icon': Icons.home, 'required': true, 'maxLines': 2},
    {'key': 'email', 'label': 'Email', 'icon': Icons.email, 'required': true, 'type': TextInputType.emailAddress},
    {'key': 'universitas', 'label': 'Universitas', 'icon': Icons.school, 'required': true},
    {'key': 'tanggal', 'label': 'Tanggal Lahir', 'icon': Icons.cake, 'required': true, 'readOnly': true},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 231, 251),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 171, 46),
        title: Text("Edit Profil"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView(
            children: [
              // Foto Profil
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 75,
                      backgroundColor: Color.fromARGB(255, 255, 171, 46),
                      child: CircleAvatar(
                        radius: 71,
                        backgroundImage: AssetImage("assets/nyanko.jpg"),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 255, 171, 46),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          icon: Icon(Icons.camera_alt, color: Colors.white),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text("Fitur ganti foto belum tersedia")),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),

              // Form Fields
              ..._formFields.map((field) => Column(
                children: [
                  _buildInputField(field),
                  SizedBox(height: 16),
                ],
              )).toList(),

              SizedBox(height: 10),

              // Tombol Save
              Container(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: _saveProfile,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 255, 171, 46),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    "Simpan Perubahan",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInputField(Map<String, dynamic> field) {
    final key = field['key'] as String;
    final controller = _controllers[key]!;
    final label = field['label'] as String;
    final icon = field['icon'] as IconData;
    final required = field['required'] as bool? ?? false;
    final maxLines = field['maxLines'] as int? ?? 1;
    final keyboardType = field['type'] as TextInputType?;
    final readOnly = field['readOnly'] as bool? ?? false;

    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 212, 121),
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        maxLines: maxLines,
        keyboardType: keyboardType,
        readOnly: readOnly,
        onTap: readOnly ? () {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Fitur date picker belum tersedia")),
          );
        } : null,
        validator: required ? (value) {
          if (value == null || value.isEmpty) {
            return '$label harus diisi';
          }
          if (key == 'email' && !value.contains('@')) {
            return 'Format email tidak valid';
          }
          if (key == 'telepon' && value.length < 10) {
            return 'Nomor telepon minimal 10 digit';
          }
          return null;
        } : null,
        decoration: InputDecoration(
          labelText: label,
          prefixIcon: Icon(icon, color: Colors.black87),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          filled: true,
          fillColor: Colors.transparent,
          labelStyle: TextStyle(color: Colors.black87, fontWeight: FontWeight.w500),
          contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        ),
      ),
    );
  }
}  