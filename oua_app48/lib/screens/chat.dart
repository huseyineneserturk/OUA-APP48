import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 242, 242),
      appBar: AppBar(
        title: Text(
          'Mesajlar',
          style: GoogleFonts.gabarito(),
        ),
      ),
      body: ListView.builder(
        itemCount: 5, // Örnek için 10 mesaj
        itemBuilder: (BuildContext context, int index) {
          return _buildMessageItem(index);
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: <Widget>[
               Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Mesajınızı yazın...',
                    hintStyle: GoogleFonts.gabarito(),
                    border: InputBorder.none,
                  ),
                ),
              ),
              IconButton(
                icon: const Icon(Icons.send),
                onPressed: () {
                  // Mesajı gönderme işlemi
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMessageItem(int index) {
    // Örnek mesajlar için rastgele veri oluşturulabilir
    final String sender = index.isEven ? 'Ben' : 'Karşı taraf';
    final String message = 'Örnek mesaj $index';

    return ListTile(
      title: Text(sender),
      subtitle: Text(message),
      leading: CircleAvatar(
        child: Text(sender[0]), // İlk harfi göstermek için
      ),
    );
  }
}
