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
        backgroundColor: const Color.fromARGB(255, 236, 100, 79),
        title: Text(
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
              height: MediaQuery.of(context).size.height / 18,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width / 1.2,
              height: MediaQuery.of(context).size.height / 4,
              child: const GoogleMapWidget(),
            ),
            const SizedBox(height: 25.0),
            Text(
              'Yakınızdaki konumları keşfedin.',
              style: GoogleFonts.gabarito(
                color: const Color.fromARGB(252, 90, 86, 86),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 18.0),
            SizedBox(
              height: 150,
              width: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  // Önerilen lokasyonlar için örnek Container'lar
                  buildRecommendedLocation(
                      'Mecidiye Camii', 'assets/images/konum1.png'),
                  buildRecommendedLocation(
                      'Kız Kulesi', 'assets/images/konum2.png'),
                  buildRecommendedLocation(
                      'Aziz Stephen', 'assets/images/konum3.png'),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildRecommendedLocation(String locationName, String assetName) {
    return Container(
      height: 200,
      width: 200,
      margin: const EdgeInsets.symmetric(horizontal: 1.0),
      padding: const EdgeInsets.all(4.0),
      decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(assetName)),
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
