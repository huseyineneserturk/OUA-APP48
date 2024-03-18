import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mesajlar'),
      ),
      body: ListView.builder(
        itemCount: 10, // Örnek için 10 mesaj
        itemBuilder: (BuildContext context, int index) {
          return _buildMessageItem(index);
        },
      ),
      bottomNavigationBar: BottomAppBar(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Row(
            children: <Widget>[
              const Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Mesajınızı yazın...',
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
