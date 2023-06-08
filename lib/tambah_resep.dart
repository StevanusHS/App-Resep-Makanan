import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tambah Resep',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const AddRecipePage(),
    );
  }
}

class AddRecipePage extends StatefulWidget {
  const AddRecipePage({Key? key}) : super(key: key);

  @override
  _AddRecipePageState createState() => _AddRecipePageState();
}

class _AddRecipePageState extends State<AddRecipePage> {
  late ImagePicker _imagePicker;
  late PickedFile _pickedImage;

  @override
  void initState() {
    super.initState();
    _imagePicker = ImagePicker();
  }

  Future<void> _getImageFromGallery() async {
    final pickedImage =
        await _imagePicker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedImage != null) {
        _pickedImage = pickedImage;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.close),
          onPressed: () {
            // Aksi saat tombol close diklik
            print('Close button clicked');
          },
        ),
        title: const Text('Tambah Resep'),
        backgroundColor: Colors.green, // Ubah warna bar atas menjadi hijau
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Nama Resep',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Masukkan Nama Resep',
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Deskripsi Resep',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            TextFormField(
              maxLines: 3,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Masukkan Deskripsi Resep',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed:
                  _getImageFromGallery, // Mengubah aksi tombol "Foto Resep"
              child: const Text(
                  'Upload Gambar'), // Ubah teks tombol "Foto Resep" menjadi "Upload Gambar"
              style: ElevatedButton.styleFrom(
                primary: Colors
                    .green, // Ubah warna tombol upload gambar menjadi hijau
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Aksi saat tombol "Simpan" diklik
                  print('Simpan button clicked');
                },
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(16.0),
                  primary: Colors.green,
                ),
                child: const Text('Simpan', style: TextStyle(fontSize: 16)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
