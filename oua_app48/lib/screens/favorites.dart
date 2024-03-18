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
          _buildFavoriteItem('Zeynep Çelik', 'assets/images/insan1.png'),
          _buildFavoriteItem('Hüseyin Yıldız', 'assets/images/insan2.png'),
          _buildFavoriteItem('Ahmet Kocaman', 'assets/images/insan3.png'),
          // Favorilere eklenmiş diğer fotoğrafçılar için örnekler
        ],
      ),
    );
  }

  Widget _buildFavoriteItem(String photographerName, String imagePath) {
    return ListTile(
      title: Text(
        photographerName,
        style: GoogleFonts.gabarito(),
      ),
      subtitle: Text(
        'Favorilere Eklendi',
        style: GoogleFonts.gabarito(),
      ),
      leading: CircleAvatar(
        backgroundImage: AssetImage(imagePath),
         radius: 30,
      ),
    );
  }
}
