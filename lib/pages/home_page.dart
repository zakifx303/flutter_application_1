// Lokasi: lib/pages/home_page.dart
import 'package:flutter/material.dart';
import 'tambah_kliping.dart'; // Mengimpor halaman TambahKlipingPage

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: false, // Memastikan teks "Eclips" berada di sebelah kiri
        title: const Text(
          'Eclips',
          style: TextStyle(
            color: Colors.black,
            fontSize: 24,
            fontWeight: FontWeight.w500,
          ),
        ),

        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black, size: 28),
            onPressed: () {
              // Aksi saat tombol pencarian ditekan
            },
          ),
        ],
        // Menambahkan garis batas (border) tipis di bawah AppBar
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(color: Colors.grey.shade400, height: 1.0),
        ),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Ikon empty state (mendekati wireframe)
            Icon(
              Icons.sentiment_dissatisfied_outlined,
              size: 100,
              color: Colors.black87,
            ),
            SizedBox(height: 16),
            Text(
              'Tidak ada apa-apa disini',
              style: TextStyle(color: Colors.black87, fontSize: 16),
            ),
          ],
        ),
      ),
      // Membungkus BottomNavigationBar dengan Container untuk memberi garis batas atas
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey.shade400, width: 1.0),
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          showSelectedLabels: false, // Menyembunyikan teks di bawah ikon
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black87,
          iconSize: 32,
          onTap: (index) {
            if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const TambahKlipingPage(),
                ),
              );
              return;
            }

            setState(() {
              _selectedIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined),
              activeIcon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_circle_outline),
              activeIcon: Icon(Icons.add_circle),
              label: 'Tambah',
            ),
            BottomNavigationBarItem(
              // Menggunakan leaderboard_outlined karena bentuknya paling mirip
              // grafik batang di wireframe (tanpa kotak pembatas)
              icon: Icon(Icons.leaderboard_outlined),
              activeIcon: Icon(Icons.leaderboard),
              label: 'Analitik',
            ),
          ],
        ),
      ),
    );
  }
}
