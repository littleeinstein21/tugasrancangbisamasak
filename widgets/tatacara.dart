import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../dummy_data.dart';

final db = FirebaseFirestore.instance;

// ignore: must_be_immutable
class TataCaraMasakScreen extends StatelessWidget {
  final int index;

  TataCaraMasakScreen({required this.index});

  Map<String, dynamic>? data;
  String? nama;
  List<String>? cara;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<DocumentSnapshot>(
        future: db.collection('dataMasak').doc(dataMasak[index].nama).get(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (snapshot.hasError) {
            return Text('Error: ${snapshot.error}');
          } else if (!snapshot.hasData || !snapshot.data!.exists) {
            return const Text('Document does not exist');
          } else {
            data = snapshot.data!.data() as Map<String, dynamic>;
            nama = data!['nama'].toString();
            cara = List<String>.from(data!['cara'] ?? []);

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
                                'Tata Cara Memasak',
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
                    const SizedBox(height: 16.0),
                    Expanded(
                      child: Card(
                        color: Colors.black54,
                        elevation: 4.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: ListView.builder(
                            itemCount: cara?.length,
                            itemBuilder: (context, i) => ListTile(
                              contentPadding: const EdgeInsets.symmetric(vertical: 8.0),
                              leading: CircleAvatar(
                                backgroundColor: const Color.fromARGB(255, 27, 187, 184),
                                child: Text(
                                  (i + 1).toString(),
                                  style: const TextStyle(color: Colors.black),
                                ),
                              ),
                              title: Text(
                                cara![i],
                                style: const TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.white,
                                ),
                                textAlign: TextAlign.justify, // Set text alignment
                              ),
                            ),
                          ),
                        ),
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
