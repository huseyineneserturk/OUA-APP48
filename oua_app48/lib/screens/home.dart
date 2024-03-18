import 'package:flutter/material.dart';
import 'package:oua_app48/screens/map.dart';
import 'package:oua_app48/screens/notification.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SayCheese'),
        actions: [
          IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const NotificationsPage()),
                );
              }),
        ],
      ),
      body: Container(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  hintText: 'Lokasyon ara...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15)
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height/30,
            ),
            Container(
              width: MediaQuery.of(context).size.width/1.2,
              height: MediaQuery.of(context).size.height/4,
              child: GoogleMapWidget(),
            ),
            const SizedBox(height: 16.0),
            SizedBox(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // Önerilen lokasyonlar için örnek Container'lar
                  buildRecommendedLocation('Örnek Lokasyon 1'),
                  buildRecommendedLocation('Örnek Lokasyon 2'),
                  buildRecommendedLocation('Örnek Lokasyon 3'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRecommendedLocation(String locationName) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Text(
          locationName,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
