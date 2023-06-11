import 'package:app_menu_makanan/edit_profile.dart';
import 'package:app_menu_makanan/main.dart';
import 'package:app_menu_makanan/tambah_resep.dart';
import 'package:app_menu_makanan/homePage.dart';
import 'package:flutter/material.dart';
import 'package:app_menu_makanan/resep_saya.dart';
import 'package:app_menu_makanan/daftar_resep.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.green, // Warna hijau pada bar atas
        actions: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const Text(
                  "Logout",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                IconButton(
                  icon: const Icon(Icons.logout),
                  onPressed: () {
                    // Aksi saat tombol search diklik
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const LoginPage()),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.white, // Warna hijau pada bagian atas foto profil
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/images/logo-resep.png'),
                    radius: 40,
                  ),
                  const SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Stevanus', // Nama pengguna
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.green),
                      ),
                      Text(
                        'Seorang yang suka memasak', // Deskripsi diri
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Aksi saat tombol Edit Profil diklik
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const EditProfilePage()),
                    );
                  },
                  child: Text('Edit Profil'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green, // Warna hijau pada button
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            Divider(
              color: Colors.black, // Warna garis pemisah
              thickness: 2, // Ketebalan garis pemisah
            ),
            const SizedBox(height: 16),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Tersimpan',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              height: 240,
              child: ListView(
                padding: const EdgeInsets.only(left: 20, right: 10),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    width: 180,
                    margin: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        // Aksi saat card diklik
                        print('Card 1 clicked');
                      },
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/nasgor.png',
                              width: 120,
                              height: 120,
                            ),
                            const SizedBox(height: 10),
                            const Text('Nasi Goreng'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 180,
                    margin: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        // Aksi saat card diklik
                        print('Card 2 clicked');
                      },
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/nasgor.png',
                              width: 120,
                              height: 120,
                            ),
                            const SizedBox(height: 10),
                            const Text('Nasi Goreng'),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Tambahkan card menu lainnya di sini
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        color: Colors.green,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: Icon(Icons.home, color: Colors.white),
              onPressed: () {
                // Aksi saat tombol home diklik
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              },
            ),
            IconButton(
              icon: Icon(Icons.restaurant_menu, color: Colors.white),
              onPressed: () {
                // Aksi saat tombol restaurant_menu diklik
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DaftarRecipe()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.add, color: Colors.white),
              onPressed: () {
                // Aksi saat tombol add diklik
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const AddRecipePage()),
                );
              },
            ),
            IconButton(
              icon: Icon(Icons.receipt, color: Colors.white),
              onPressed: () {
                // Aksi saat tombol receipt diklik
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const MyRecipe()));
              },
            ),
            IconButton(
              icon: Icon(Icons.person, color: Colors.white),
              onPressed: () {
                // Aksi saat tombol person diklik
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfilePage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
