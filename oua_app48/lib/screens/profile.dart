import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Profil"),
        backgroundColor: Color.fromARGB(255, 255, 236, 233),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Color.fromARGB(255, 255, 236, 233),
        padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
        child: Column(
          children: [
            SizedBox(height: 35,),
            CircleAvatar(
              radius: 80,
              backgroundColor: const Color.fromARGB(255, 255, 255, 255),
              child: Image.asset('assets/images/logo.png'),
            ),
          ],
        ),
      )
    );
  }
}