import 'package:flutter/material.dart';

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
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/logo-resep.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Center(
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
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 20),
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
            const SizedBox(height: 20),
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
                        print('Card 3 clicked');
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
                        print('Card 4 clicked');
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
                        print('Card 5 clicked');
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
                        print('Card 6 clicked');
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
