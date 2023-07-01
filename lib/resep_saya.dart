import 'package:app_menu_makanan/homePage.dart';
import 'package:flutter/material.dart';
import 'package:app_menu_makanan/daftar_resep.dart';
import 'package:app_menu_makanan/profile.dart';
import 'package:app_menu_makanan/tambah_resep.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Resep Saya',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const MyRecipe(),
    );
  }
}

class MyRecipe extends StatefulWidget {
  const MyRecipe({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MyRecipeState createState() => _MyRecipeState();
}

class _MyRecipeState extends State<MyRecipe> {
  String selectedCategory = 'All';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resep Saya'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Cari resep kamu',
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 15,
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      icon: Icon(Icons.search, color: Colors.green),
                      onPressed: () {
                        // Aksi saat tombol search diklik
                        print('Search button clicked');
                      },
                    ),
                  ],
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
                            const Text('Ayam Geprek'),
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
                            const Text('Nasi Goreng Jawa'),
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
