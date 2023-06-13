import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class DetailRecipePage extends StatefulWidget {
  final String recipeId;

  const DetailRecipePage({Key? key, required this.recipeId}) : super(key: key);

  @override
  _DetailRecipePageState createState() => _DetailRecipePageState();
}

class _DetailRecipePageState extends State<DetailRecipePage> {
  late Future<DocumentSnapshot> _recipeDetail;

  @override
  void initState() {
    super.initState();
    _recipeDetail = FirebaseFirestore.instance
        .collection('recipes')
        .doc(widget.recipeId)
        .get();
  }

  Future<void> deleteRecipe() async {
    await FirebaseFirestore.instance
        .collection('recipes')
        .doc(widget.recipeId)
        .delete();
    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail Resep'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: FutureBuilder<DocumentSnapshot>(
        future: _recipeDetail,
        builder: (BuildContext context, AsyncSnapshot<DocumentSnapshot> snapshot) {
          if (snapshot.hasError) {
            return const Text("Terjadi kesalahan");
          }

          if (snapshot.connectionState == ConnectionState.done) {
            Map<String, dynamic> data = snapshot.data!.data() as Map<String, dynamic>;
            return SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Image.asset('assets/images/nasgor.png', width: double.infinity, fit: BoxFit.cover),
                  const SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "${data['recipe_name']}",
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 20),
                        Text(
                          "${data['recipe_description']}",
                          style: const TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    onPressed: deleteRecipe,
                    child: const Text('Hapus Resep'),
                  ),
                ],
              ),
            );
          }

          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}
