import 'package:flutter/material.dart';
import 'package:tampilanprofil/profilescreen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          child : Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Username',
                hintText: 'Masukkan username'
              ),
            ),
            SizedBox(height: 20),
          
          TextField(
            controller: usernameController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Password',
              hintText: 'Masukkan password'
            ),
            obscureText: true,
          ),
          ElevatedButton(onPressed: (){
          Navigator.of(context).push(
            MaterialPageRoute(builder: (_)=> ProfileScreen(username: usernameController.text,))
          );
          }, child: Text('Login')),

            ],
            ),
          ),
        ),
      ),
    );
  }
}