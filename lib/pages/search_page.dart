import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // Menggunakan SafeArea agar tidak tertutup poni/status bar HP
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 16.0),
          child: Row(
            children: [
              // Tombol X untuk kembali ke Home
              IconButton(
                icon: const Icon(Icons.close, color: Colors.black, size: 28),
                onPressed: () {
                  Navigator.pop(context); // Perintah untuk menutup halaman ini
                },
              ),
              const SizedBox(width: 4),

              // Kotak input pencarian
              Expanded(
                child: Container(
                  height: 45, // Tinggi kotak pencarian
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300, // Warna latar abu-abu
                    borderRadius: BorderRadius.circular(8), // Sudut membulat
                  ),
                  child: Row(
                    children: [
                      // Area ketik teks
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Cari kliping...',
                            hintStyle: TextStyle(color: Colors.grey),
                            border: InputBorder
                                .none, // Menghilangkan garis bawah bawaan TextField
                            contentPadding: EdgeInsets.symmetric(
                              horizontal: 16,
                              vertical: 12,
                            ),
                          ),
                        ),
                      ),

                      // Garis pembatas vertikal (Vertical Divider)
                      Container(
                        width: 1,
                        height: 25,
                        color: Colors.grey.shade500,
                      ),

                      // Ikon Search di dalam kotak abu-abu
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12.0),
                        child: Icon(
                          Icons.search,
                          color: Colors.black,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(width: 8),
            ],
          ),
        ),
      ),
    );
  }
}
