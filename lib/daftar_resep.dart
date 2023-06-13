import 'package:flutter/material.dart';
import 'package:app_menu_makanan/detail_resep.dart';
import 'package:app_menu_makanan/homePage.dart';
import 'package:app_menu_makanan/profile.dart';
import 'package:app_menu_makanan/resep_saya.dart';
import 'package:app_menu_makanan/tambah_resep.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Daftar Resep',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const DaftarRecipe(),
    );
  }
}

class DaftarRecipe extends StatefulWidget {
  const DaftarRecipe({Key? key}) : super(key: key);

  @override
  _DaftarRecipeState createState() => _DaftarRecipeState();
}

class _DaftarRecipeState extends State<DaftarRecipe> {
  String selectedCategory = 'All';
  final Stream<QuerySnapshot> _recipeStream = FirebaseFirestore.instance.collection('recipes').snapshots();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar Resep'),
        centerTitle: true,
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: _recipeStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong');
          }

          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text("Loading");
          }

          return ListView(
            children: snapshot.data!.docs.map((DocumentSnapshot document) {
              Map<String, dynamic> data = document.data() as Map<String, dynamic>;
              return ListTile(
                title: Text(data['recipe_name']),
                subtitle: Text(data['recipe_description']),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DetailRecipePage(recipeId: document.id)),
                  );
                },
              );
            }).toList(),
          );
        },
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