// Lokasi: lib/main.dart
import 'package:flutter/material.dart';
import 'pages/home_page.dart'; // Mengimpor file home_page.dart yang baru dibuat

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Kliping Humas',
      debugShowCheckedModeBanner:
          false, // Menghilangkan pita "DEBUG" di pojok kanan atas
      theme: ThemeData(
        scaffoldBackgroundColor:
            Colors.white, // Menetapkan warna dasar aplikasi
        appBarTheme: const AppBarTheme(
          surfaceTintColor: Colors
              .white, // Mencegah warna AppBar berubah saat di-scroll (khusus Material 3)
        ),
      ),
      home: const HomePage(),
      // Menjadikan HomePage sebagai halaman pertama
    );
  }
}
