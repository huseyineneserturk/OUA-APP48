import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 251, 242, 242),
      appBar: AppBar(
        title: Text(
          "Profil",
          style: GoogleFonts.gabarito(),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 236, 233),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20),
              const CircleAvatar(
                radius: 80,
                backgroundColor: Color.fromARGB(255, 255, 255, 255),
                backgroundImage: AssetImage('assets/images/profile_photo.png'),
              ),
              const SizedBox(height: 20),
              const Text(
                'Kullanıcı Adı',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 10),
              Text(
                'kullanici@mail.com',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Düzenleme butonuna tıklama işlevi
                },
                child: const Text(
                  'Profili Düzenle',
                  style: TextStyle(
                    color: Color.fromARGB(255, 236, 100, 79),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              OutlinedButton(
                onPressed: () {
                  // Çıkış yapma işlevi
                },
                child: const Text(
                  'Çıkış Yap',
                  style: TextStyle(
                    color: Color.fromARGB(255, 236, 100, 79),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
