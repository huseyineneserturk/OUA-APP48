//İntroduction page

import 'package:flutter/material.dart';
import 'package:oua_app48/giris.dart';
import 'package:flutter_swiper_null_safety/flutter_swiper_null_safety.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroductionScreen(),
    );
  }
}

class IntroductionScreen extends StatefulWidget {
  @override
  _IntroductionScreenState createState() => _IntroductionScreenState();
}

class _IntroductionScreenState extends State<IntroductionScreen> {
  int _currentIndex = 0;
  final List<String> introImages = [
    'assets/images/image1.png',
    'assets/images/image2.png',
    'assets/images/image3.png',
    'assets/images/image4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Swiper(
            loop: false,
            onIndexChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            autoplay: false,
            itemCount: introImages.length,
            itemBuilder: (BuildContext context, int index) {
              return Image.asset(
                introImages[index],
                fit: BoxFit.cover,
              );
            },
            pagination: const SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                activeSize: 12.0,
                size: 8.0,
                activeColor: Colors.red,
              ),
            ),
          ),
          if (_currentIndex == 3)
            Positioned(
              bottom: 20,
              right: 20,
              child: FloatingActionButton(
                backgroundColor: Colors.red,
                child: const Icon(Icons.arrow_forward, color: Colors.black),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LogIn(),
                    ),
                  );
                },
              ),
            ),
        ],
      ),
    );
  }
}
