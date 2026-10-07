// Lokasi: lib/pages/home_page.dart
import 'package:flutter/material.dart';
import 'tambah_kliping.dart'; // Ganti ke tambah_kliping_page.dart jika nama file Anda berbeda
import 'analitik_page.dart'; // Mengimpor halaman analitik yang baru dibuat

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  // Daftar halaman yang akan dipanggil berdasarkan tab
  final List<Widget> _pages = [
    const HomeContent(), // Index 0: Tampilan "Tidak ada apa-apa"
    const TambahKlipingPage(), // Index 1: Form tambah kliping
    const AnalitikPage(), // Index 2: Halaman Analistik
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildDynamicAppBar(),
      body: _pages[_selectedIndex],
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
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black87,
          iconSize: 32,
          onTap: (index) {
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
              icon: Icon(Icons.leaderboard_outlined),
              activeIcon: Icon(Icons.leaderboard),
              label: 'Analitik',
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi untuk mengubah AppBar berdasarkan halaman yang sedang dibuka
  PreferredSizeWidget _buildDynamicAppBar() {
    if (_selectedIndex == 1) {
      return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Tambah kliping',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(color: Colors.grey.shade400, height: 1.0),
        ),
      );
    } else if (_selectedIndex == 2) {
      // Tampilan AppBar untuk Halaman "Analistik"
      return AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true, // Judul di tengah sesuai wireframe ke-3
        title: const Text(
          'Analistik',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(color: Colors.grey.shade400, height: 1.0),
        ),
      );
    }

    // Tampilan AppBar untuk Halaman "Home" (Index 0)
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: false,
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
          onPressed: () {},
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(color: Colors.grey.shade400, height: 1.0),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
    );
  }
}
