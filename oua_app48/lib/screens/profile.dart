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
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          color: const Color.fromARGB(255, 255, 236, 233),
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
          child: Column(
            children: [
             const SizedBox(
                height: 35,
              ),
              CircleAvatar(
                radius: 80,
                backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                child: Image.asset('assets/images/logo.png'),
              ),
            ],
          ),
        ));
  }
}
