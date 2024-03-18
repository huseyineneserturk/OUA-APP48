import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:oua_app48/screens/map.dart';
import 'package:oua_app48/screens/notification.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 236, 100, 79),
        title:  Text(
          'SayCheese',
          style: GoogleFonts.aBeeZee(
            color: const Color.fromARGB(255, 255, 255, 255),
          ),
        ),
        actions: [
          IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NotificationsPage()),
                );
              }),
          IconButton(
            icon: const Icon(Icons.exit_to_app), // çıkış ikonu
            onPressed: () {
              SystemNavigator.pop(); // uygulamayı kapatır
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            // gradient: LinearGradient(
            //       begin: Alignment.topRight,
            //       end: Alignment.bottomLeft,
            //       colors: [
            //         thirdPalette1,
            //         thirdPalette2,
            //       ],
            //     )
            color: Color.fromARGB(255, 251, 242, 242)),
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 00),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              padding: const EdgeInsets.only(top: 50),
              child: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey,
                  hintText: 'Lokasyon ara...',
                  hintStyle: GoogleFonts.gabarito(),
                  prefixIcon: const Icon(Icons.search),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 8,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 4,
              child: const GoogleMapWidget(),
            ),
            const SizedBox(height: 25.0),
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
        color: const Color.fromARGB(255, 251, 69, 69),
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(
        child: Text(
          locationName,
          style: GoogleFonts.gabarito(color: Colors.white),
        ),
      ),
    );
  }
}
