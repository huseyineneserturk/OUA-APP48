import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 242, 242),
      appBar: AppBar(
        title: Text('Favoriler', style: GoogleFonts.gabarito()),
      ),
      body: ListView(
        children: [
          _buildFavoriteItem('Fotoğrafçı Adı 1'),
          _buildFavoriteItem('Fotoğrafçı Adı 2'),
          _buildFavoriteItem('Fotoğrafçı Adı 3'),
          // Favorilere eklenmiş diğer fotoğrafçılar için örnekler
        ],
      ),
    );
  }

  Widget _buildFavoriteItem(String photographerName) {
    return ListTile(
      title: Text(
        photographerName,
        style: GoogleFonts.gabarito(),
      ),
      subtitle: Text(
        'Favorilere Eklendi',
        style: GoogleFonts.gabarito(),
      ),
      leading: const CircleAvatar(
        child: Icon(Icons.person),
      ),
      onTap: () {
        // Fotoğrafçıya tıklanıldığında yapılacak işlemler
      },
    );
  }
}
