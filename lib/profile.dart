import 'package:flutter/material.dart';

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
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              color: Colors.green, // Warna hijau pada bagian atas foto profil
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
                            fontSize: 24, fontWeight: FontWeight.bold),
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
                    print('Edit Profil button clicked');
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
                padding: const EdgeInsets.only(left: 10, right: 10),
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        // Aksi saat card diklik
                        print('Card 1 clicked');
                      },
                      child: Container(
                        width: 180,
                        margin: const EdgeInsets.only(right: 10),
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/logo-resep.png',
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
                  ),
                  Expanded(
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {
                        // Aksi saat card diklik
                        print('Card 2 clicked');
                      },
                      child: Container(
                        width: 180,
                        margin: const EdgeInsets.only(right: 10),
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/logo-resep.png',
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
                print('Home button clicked');
              },
            ),
            IconButton(
              icon: Icon(Icons.restaurant_menu, color: Colors.white),
              onPressed: () {
                // Aksi saat tombol restaurant_menu diklik
                print('Restaurant menu button clicked');
              },
            ),
            IconButton(
              icon: Icon(Icons.add, color: Colors.white),
              onPressed: () {
                // Aksi saat tombol add diklik
                print('Add button clicked');
              },
            ),
            IconButton(
              icon: Icon(Icons.receipt, color: Colors.white),
              onPressed: () {
                // Aksi saat tombol receipt diklik
                print('Receipt button clicked');
              },
            ),
            IconButton(
              icon: Icon(Icons.person, color: Colors.white),
              onPressed: () {
                // Aksi saat tombol person diklik
                print('Person button clicked');
              },
            ),
          ],
        ),
      ),
    );
  }
}
