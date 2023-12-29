import 'package:bisa/dummy_data.dart';
import 'package:bisa/screens/menu_screen.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '/widgets/watchlist.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;

class WatchListScreen extends StatefulWidget {
  @override
  State<WatchListScreen> createState() => _WatchListScreenState();
}

class _WatchListScreenState extends State<WatchListScreen> {
  GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  List<int> watchedIndexes = [];

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseFirestore.instance
          .collection('users')
          .doc(_auth.currentUser!.uid)
          .collection('watchlist')
          .doc(_auth.currentUser!.uid)
          .snapshots(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return CircularProgressIndicator();
        }

        watchedIndexes = List<int>.from(snapshot.data?['watchlist'] ?? []);

        return Scaffold(
          appBar: AppBar(
            title: Text(
              'Watchlist',
              style: GoogleFonts.roboto(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 16, 69, 75),
        iconTheme: IconThemeData(color: Colors.white),
      ),
          body: watchedIndexes.isEmpty
              ? const Center(
                  child: Text('No recipes in watchlist'),
                )
              : AnimatedList(
                  key: listKey,
                  initialItemCount: watchedIndexes.length,
                  itemBuilder: (context, index, animation) {
                    return _buildItem(context, index, animation);
                  },
                ),
        );
      },
    );
  }

  Widget _buildItem(
      BuildContext context, int index, Animation<double> animation) {
    return SlideTransition(
      position: Tween<Offset>(begin: const Offset(1, 0), end: Offset.zero)
          .animate(animation),
      child: Dismissible(
        key: Key(watchedIndexes[index].toString()),
        background: Container(
          color: Colors.red,
          alignment: Alignment.centerRight,
          padding: const EdgeInsets.only(right: 20),
          child: const Icon(
            Icons.delete,
            color: Colors.white,
          ),
        ),
        onDismissed: (direction) async {
          await WatchList.toggleWatch(watchedIndexes[index]);
          listKey.currentState?.removeItem(
            index,
            (context, animation) =>
                Container(),
            duration: const Duration(milliseconds: 300),
          );
        },
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.check, color: Colors.green),
              title: Text(
                dataMasak[watchedIndexes[index]].nama,
                style: GoogleFonts.openSans(), // You can customize the font here
              ),
              trailing: IconButton(onPressed: ()async{
                await WatchList.toggleWatch(watchedIndexes[index]);
                listKey.currentState?.removeItem(
            index,
            (context, animation) =>
                Container(), // Remove item from AnimatedList
            duration: const Duration(milliseconds: 300),
          );
              }, icon: const Icon(Icons.delete)),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MenuScreen(index: watchedIndexes[index]),
                  ),
                );
              },
            ),
            const Divider(
              color: Colors.grey,
              height: 1.0,
            ),
          ],
        ),
      ),
    );
  }
}