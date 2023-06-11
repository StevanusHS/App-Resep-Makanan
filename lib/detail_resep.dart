import 'package:app_menu_makanan/daftar_resep.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Detail Resep',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DetailRecipePage(),
    );
  }
}

class DetailRecipePage extends StatelessWidget {
  const DetailRecipePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Aksi saat tombol close diklik
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const DaftarRecipe()),
            );
          },
        ),
        title: const Text('Detail'),
        actions: [
          IconButton(
            icon: Icon(Icons.favorite_border),
            onPressed: () {
              // Aksi saat tombol like/love diklik
              print('Like/love button clicked');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Image.asset(
                'assets/images/logo-resep.png',
                height: 240,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Nasi Goreng',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 16),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Deskripsi Resep',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Nasi goreng adalah salah satu makanan tradisional Indonesia yang terkenal di seluruh dunia. Makanan ini terbuat dari nasi yang digoreng bersama dengan berbagai bumbu dan bahan tambahan seperti sayuran, daging, atau seafood. Nasi goreng memiliki cita rasa yang gurih dan lezat, serta dapat disajikan sebagai hidangan utama atau sebagai lauk pendamping. Berikut adalah bahan-bahan yang dibutuhkan untuk membuat nasi goreng:',
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                '- Nasi putih\n- Bawang merah\n- Bawang putih\n- Cabai merah\n- Kecap manis\n- Garam\n- Merica\n- Daging ayam/sapi/udang (sesuai selera)\n- Sayuran (wortel, kacang polong, kol, dll.)\n- Telur\n- Minyak goreng',
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                'Berikut adalah langkah-langkah cara membuat nasi goreng:',
              ),
            ),
            const SizedBox(height: 8),
            const Padding(
              padding: EdgeInsets.only(left: 16),
              child: Text(
                '1. Panaskan minyak goreng di wajan.\n2. Tumis bawang merah dan bawang putih hingga harum.\n3. Masukkan cabai merah dan daging ayam/sapi/udang, aduk hingga matang.\n4. Tambahkan sayuran dan aduk rata.\n5. Masukkan nasi putih, kecap manis, garam, dan merica. Aduk hingga bumbu merata dan nasi terasa hangat.\n6. Pindahkan nasi goreng ke piring saji dan tambahkan telur mata sapi di atasnya.\n7. Nasi goreng siap disajikan.',
              ),
            ),
            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
