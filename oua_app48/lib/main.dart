import 'package:flutter/material.dart';
import 'package:oua_app48/giris.dart';
import 'package:oua_app48/kayit.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Giriş Yap',
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
      home: const LogInScreen(),
    );
  }
}