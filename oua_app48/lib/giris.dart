import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:oua_app48/kayit.dart';
import 'package:oua_app48/screens/tab.dart';

class LogInScreen extends StatelessWidget {
  const LogInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Giriş Yap',
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
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 233, 215, 215)
                          .withOpacity(0.5),
                      spreadRadius: 5,
                      blurRadius: 5,
                      offset: const Offset(0, 3),
                    ),
                  ],
                ),
                child: CircleAvatar(
                  radius: 50,
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255),
                  child: Image.asset('assets/images/logo.png'),
                ),
              ),
              const SizedBox(height: 70),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Kullanıcı Adı',
                  labelStyle: GoogleFonts.gabarito(),
                  prefixIcon: const Icon(
                    Icons.person,
                    color: Colors.grey,
                  ),
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
                  prefixIcon: const Icon(
                    Icons.mail,
                    color: Colors.grey,
                  ),
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
                  prefixIcon: const Icon(
                    Icons.lock,
                    color: Colors.grey,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                ),
              ),
              const SizedBox(height: 90),
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
                        'Google ile Giriş Yap',
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
                  'Giriş Yap',
                  style: GoogleFonts.gabarito(
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  Navigator.pushReplacement<void, void>(
                    context,
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>  TabsScreen(),
                    ),
                  ); 
                },
              ),
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Kayit()),
                  );
                },
                child: Text(
                  'Hesabın yok mu? Hemen bir tane oluştur',
                  style: GoogleFonts.robotoFlex(color: Colors.blue),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
