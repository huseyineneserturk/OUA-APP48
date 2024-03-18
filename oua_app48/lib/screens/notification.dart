import 'package:flutter/material.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 242, 242),
      appBar: AppBar(
        title: const Text('Bildirimler'),
      ),
      body: ListView.builder(
        itemCount: 5, 
        itemBuilder: (BuildContext context, int index) {
          return _buildNotificationItem(index+1);
        },
      ),
    );
  }

  Widget _buildNotificationItem(int index) {
    // Örnek bildirimler için rastgele veri oluşturulabilir
    final String notificationText = 'Örnek bildirim $index';
    
    return ListTile(
      title: Text(notificationText),
      // Bildirim detaylarını gösterecek bir ekran oluşturmak için onTap kullanılabilir
      onTap: () {
        // Bildirime tıklandığında yapılacak işlemler
      },
    );
  }
}
