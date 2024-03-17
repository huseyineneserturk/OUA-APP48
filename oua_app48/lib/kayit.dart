import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class Kayit extends StatelessWidget {
  const Kayit({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profil Oluştur',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyLarge: const TextStyle(fontWeight: FontWeight.bold),
              bodyMedium: const TextStyle(fontWeight: FontWeight.bold),
              displayLarge: const TextStyle(fontWeight: FontWeight.bold),
              displayMedium: const TextStyle(fontWeight: FontWeight.bold),
              displaySmall: const TextStyle(fontWeight: FontWeight.bold),
              headlineMedium: const TextStyle(fontWeight: FontWeight.bold),
              headlineSmall: const TextStyle(fontWeight: FontWeight.bold),
              titleLarge: const TextStyle(fontWeight: FontWeight.bold),
              titleMedium: const TextStyle(fontWeight: FontWeight.bold),
              titleSmall: const TextStyle(fontWeight: FontWeight.bold),
              bodySmall: const TextStyle(fontWeight: FontWeight.bold),
              labelLarge: const TextStyle(fontWeight: FontWeight.bold),
              labelSmall: const TextStyle(fontWeight: FontWeight.bold),
            ),
      ),
      home: const ProfileCreateScreen(),
    );
  }
}

class ProfileCreateScreen extends StatelessWidget {
  const ProfileCreateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil Oluştur',
          style: GoogleFonts.gabarito(),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            SystemNavigator.pop();
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              const CircleAvatar(
                radius: 50,
                backgroundColor: Colors.grey,
                child: Icon(
                  Icons.person,
                  size: 50,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 70),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Kullanıcı Adı',
                  labelStyle: GoogleFonts.gabarito(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'E-posta veya Telefon Numarası',
                  labelStyle: GoogleFonts.gabarito(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Şifre',
                  labelStyle: GoogleFonts.gabarito(),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 120),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(400, 50),
                  backgroundColor: Colors.white,
                ),
                onPressed: () {
                  // Google ile giriş yap denildiğinde yapılacak işlem.
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Image.asset('assets/images/google.png', height: 18.0),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        'Google ile Kaydolun',
                        style: GoogleFonts.gabarito(
                          color: const Color.fromARGB(255, 0, 0, 0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(400, 50),
                  backgroundColor: Colors.red,
                ),
                child: Text(
                  'Devam Et',
                  style: GoogleFonts.gabarito(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  // Devam et denildiğinde yapılacak işlem.
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}