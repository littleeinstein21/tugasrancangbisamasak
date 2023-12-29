import 'package:bisa/dummy_data.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final db = FirebaseFirestore.instance;

class ResepMasakanScreen extends StatelessWidget {
  final int index;

  const ResepMasakanScreen({Key? key, required this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: FutureBuilder<DocumentSnapshot>(
        future: db.collection('dataMasak').doc(dataMasak[index].nama).get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text(
                'Error: ${snapshot.error}',
                style: const TextStyle(color: Colors.red),
              ),
            );
          } else if (!snapshot.hasData || !snapshot.data!.exists) {
            return const Center(
              child: Text(
                'Document does not exist',
                style: TextStyle(color: Colors.red),
              ),
            );
          } else {
            final data = snapshot.data!.data() as Map<String, dynamic>;

            final resep = data['resep'] as List<dynamic>?;

            return Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/wallpaperlogin.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 32.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              IconButton(
                                icon: const Icon(Icons.arrow_back, color: Colors.white),
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                              ),
                              const SizedBox(width: 8.0),
                              Text(
                                'Resep Masakan',
                                style: GoogleFonts.roboto(
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    Expanded(
                      child: ListView.builder(
                        itemCount: resep?.length,
                        itemBuilder: (context, index) {
                          return Card(
                            color: Colors.black45,
                            elevation: 1,
                            margin: const EdgeInsets.symmetric(vertical: 8.0),
                            child: ListTile(
                              leading: CircleAvatar(
                                backgroundColor: const Color.fromARGB(255, 24, 174, 164),
                                child: Text(
                                  '${index + 1}',
                                  style: const TextStyle(
                                    color: Colors.black87,
                                  ),
                                ),
                              ),
                              title: Text(
                                resep?[index] ?? '',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
