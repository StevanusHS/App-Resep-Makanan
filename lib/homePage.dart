import 'package:app_menu_makanan/daftar_resep.dart';
import 'package:app_menu_makanan/profile.dart';
import 'package:app_menu_makanan/resep_saya.dart';
import 'package:app_menu_makanan/tambah_resep.dart';
import 'package:flutter/material.dart';
import 'package:app_menu_makanan/detail_resep.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 200,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo-resep.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Center(
                  child: Text(
                    'Hello, Stevanus',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20, top: 20),
              child: Text(
                'Resep Populer',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const DetailRecipePage()));
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
                    // margin: const EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        // Aksi saat card diklik
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const DetailRecipePage()));
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const DetailRecipePage()));
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const DetailRecipePage()));
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const DetailRecipePage()));
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
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const DetailRecipePage()));
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
