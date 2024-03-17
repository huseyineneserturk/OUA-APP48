import 'package:flutter/material.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favoriler'),
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
      title: Text(photographerName),
      subtitle: const Text('Favorilere Eklendi'),
      leading: const CircleAvatar(
        child: Icon(Icons.person),
      ),
      onTap: () {
        // Fotoğrafçıya tıklanıldığında yapılacak işlemler
      },
    );
  }
}
