// Lokasi: lib/pages/home_page.dart
import 'package:flutter/material.dart';
import 'tambah_kliping.dart';
import 'analitik_page.dart';
import 'search_page.dart';
import 'settings_page.dart'; // Import halaman settings yang baru dibuat

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    const HomeContent(),
    const TambahKlipingPage(),
    const AnalitikPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildDynamicAppBar(),
      body: _pages[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(color: Colors.grey.shade400, width: 1.0),
          ),
        ),
        child: BottomNavigationBar(
          elevation: 0,
          type: BottomNavigationBarType.fixed,
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          // Warna ikon bawah akan otomatis mengikuti tema terang/gelap bawaan aplikasi
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

  PreferredSizeWidget _buildDynamicAppBar() {
    if (_selectedIndex == 1) {
      return AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Tambah kliping', style: TextStyle(fontSize: 20)),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(color: Colors.grey.shade600, height: 1.0),
        ),
      );
    } else if (_selectedIndex == 2) {
      return AppBar(
        elevation: 0,
        centerTitle: true,
        title: const Text('Analistik', style: TextStyle(fontSize: 20)),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(1.0),
          child: Container(color: Colors.grey.shade600, height: 1.0),
        ),
      );
    }

    // --- Tampilan AppBar untuk tab Halaman "Home" ---
    return AppBar(
      elevation: 0,
      centerTitle: false,
      title: const Text(
        'Eclips',
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search, size: 28),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SearchPage()),
            );
          },
        ),
        // Ikon pengaturan baru yang ditambahkan
        IconButton(
          icon: const Icon(Icons.settings_outlined, size: 28),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const SettingsPage()),
            );
          },
        ),
      ],
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0),
        child: Container(color: Colors.grey.shade600, height: 1.0),
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
          Icon(Icons.sentiment_dissatisfied_outlined, size: 100),
          SizedBox(height: 16),
          Text('Tidak ada apa-apa disini', style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
