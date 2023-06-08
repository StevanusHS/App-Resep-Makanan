import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        primarySwatch: Colors.green, // Mengubah primarySwatch menjadi hijau
      ),
      home: const LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/images/logo-resep.png', // Ganti dengan path gambar logo
              width: 200,
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                // Implementasi fungsi login di sini
              },
              child: const Text('Login'),
              style: ElevatedButton.styleFrom(
                primary: Colors
                    .green, // Mengubah warna latar belakang button menjadi hijau
              ),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Implementasi fungsi lupa password di sini
              },
              child: const Text('Lupa Password?'),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                // Implementasi fungsi pindah ke halaman registrasi di sini
              },
              child: const Text('Belum punya akun? Daftar'),
            ),
          ],
        ),
      ),
    );
  }
}
