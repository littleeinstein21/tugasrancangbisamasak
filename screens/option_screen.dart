import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'menu_screen.dart';

class OptionScreen extends StatelessWidget {
  final List<String> searchTerms = [
    'Ayam Betutu',
    'Ayam Goreng Kalasan',
    'Ayam Penyet',
    'Bakso',
    'Bebek Goreng',
    'Bubur Ayam',
    'Gado-Gado',
    'Ikan Bakar',
    'Ikan Goreng',
    'Ketoprak',
    'Lontong Sayur',
    'Mie Aceh',
    'Mie Goreng',
    'Mie Nyemek',
    'Nasi Goreng',
    'Nasi Padang',
    'Pepes Ikan',
    'Rawon',
    'Rendang',
    'Soto',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Indonesian Food',
          style: GoogleFonts.roboto(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              showSearch(
                context: context,
                delegate: CustomSearchDelegate(searchTerms),
              );
            },
            icon: const Icon(Icons.search),
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 15, 101, 100),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      backgroundColor: Colors.white,
      body: ListView.builder(
        itemCount: searchTerms.length * 2 - 1,
        itemBuilder: (context, index) {
          if (index.isOdd) {
            return const Divider(
              color: Colors.black,
              height: 1.0,
            );
          }
          final termIndex = index ~/ 2;
          return buildListTile(context, searchTerms[termIndex]);
        },
      ),
    );
  }

  Widget buildListTile(BuildContext context, String term) {
    return ListTile(
      title: Text(
        term,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize: 18,
        ),
      ),
      onTap: () {
        navigateToThirdScreen(context, term);
      },
    );
  }

  void navigateToThirdScreen(BuildContext context, String term) {
    final index = searchTerms.indexOf(term);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MenuScreen(index: index)),
      //ini buat tiap menu
    );
  }
}

class CustomSearchDelegate extends SearchDelegate<String> {
  final List<String> searchTerms;

  CustomSearchDelegate(this.searchTerms);

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        }, //search bar
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () {
        close(context, query);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return buildSearchResults(context);
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildSearchResults(context);
  }

  Widget buildSearchResults(BuildContext context) {
    final matchQuery = searchTerms 
        .where((food) => food.toLowerCase().contains(query.toLowerCase()))
        .toList();
        //baca huruf pd searchbar (semua huruf)

    if (matchQuery.isEmpty) {
      return const Center(
        child: Text('The recipe you are looking for seems wrong'),
        //ini klo search nya salah
      );
    }
//MatchQuery untuk check searchbar
    return ListView.builder(
      itemCount: matchQuery.length * 2 - 1,
      itemBuilder: (context, index) {
        if (index.isOdd) {
          return const Divider(
            color: Colors.white,
            height: 1.0,
          );
        }
        final termIndex = index ~/ 2;
        return ListTile(
          title: Text(matchQuery[termIndex]),
          onTap: () {
            final selectedIndex = searchTerms.indexOf(matchQuery[termIndex]);
            navigateToThirdScreen(context, selectedIndex);

            //tampilin hasil search nya dan atur garis
          },
        );
      },
    );
  }

  void navigateToThirdScreen(BuildContext context, int index) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MenuScreen(index: index)),
    );
  }
}
