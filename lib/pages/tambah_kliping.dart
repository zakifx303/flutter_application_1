// Lokasi: lib/pages/tambah_kliping_page.dart
import 'package:flutter/material.dart';

class TambahKlipingPage extends StatelessWidget {
  const TambahKlipingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // TextField: Judul Berita
          _buildTextField('Judul Berita'),
          const SizedBox(height: 16),

          // TextField: Sumber Berita
          _buildTextField('Sumber berita'),
          const SizedBox(height: 16),

          // Dropdown Mockup: Pilih Kategori (Sesuai wireframe dengan kotak hitam di kanan)
          Container(
            height: 50,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              children: [
                const SizedBox(width: 12),
                const Expanded(
                  child: Text(
                    'Pilih kategori',
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.all(4),
                  width: 40,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.arrow_drop_down,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 16),

          // TextField: Deskripsi (Multi-baris)
          TextField(
            maxLines: 4,
            decoration: const InputDecoration(
              hintText: 'Deskripsi...',
              hintStyle: TextStyle(color: Colors.grey),
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.all(12),
            ),
          ),
          const SizedBox(height: 16),

          // Area Upload File
          const Text(
            'Upload file (opsional)',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.black87,
            ),
          ),
          const SizedBox(height: 8),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(vertical: 24),
            decoration: BoxDecoration(
              color: Colors.grey.shade300, // Latar belakang abu-abu
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.black45),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.upload_file, size: 32, color: Colors.black),
                const SizedBox(width: 12),
                OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    backgroundColor: Colors.grey.shade400,
                    foregroundColor: Colors.black,
                    side: const BorderSide(color: Colors.black54),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  child: const Text('Pilih file'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 32),

          // Tombol Simpan & Batal
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                  foregroundColor: Colors.black,
                  side: const BorderSide(color: Colors.black54),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minimumSize: const Size(110, 40),
                ),
                child: const Text('Simpan'),
              ),
              const SizedBox(width: 24),
              OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.grey.shade300,
                  foregroundColor: Colors.black,
                  side: const BorderSide(color: Colors.black54),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  minimumSize: const Size(110, 40),
                ),
                child: const Text('Batal'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Fungsi bantuan untuk membuat TextField standar
  Widget _buildTextField(String hint) {
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.grey),
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 14,
        ),
      ),
    );
  }
}
