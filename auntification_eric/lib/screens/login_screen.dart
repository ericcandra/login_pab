import 'package:auntification_eric/data/user_data.dart';
import 'package:auntification_eric/models/user.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreen();
}

class _LoginScreen extends State<LoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 300),
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // TODO: 1. lOGO APLIKASI
              SizedBox(
                height: 150,
                width: 150,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset('images/android_1024.png',fit: BoxFit.cover,),
                ),
              ),
              // TODO: 2. TEXTFIELD EMAIL DAN PASSWORD
              const SizedBox(height: 16,),
              // untuk email
              TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email'
                ),
                obscureText: true,
              ),
              const SizedBox(height: 16,),
              // untuk password
              TextField(
                controller: _passwordController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Password'
                ),
                obscureText: true,
              ),
              // TODO: 3. TOMBOL LOGIN
              const SizedBox(height: 16,),
              ElevatedButton(
                onPressed: () {}, child: const Text('Login')),
            ],
          ),
        ),
      ),
    );
  }

  bool validateLogin(String email, String password) {
    for(User user in userList) {
      if(user.email == email && user.password == password) {
        return true;
      }
    }
    return false;
  }
}