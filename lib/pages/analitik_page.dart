// Lokasi: lib/pages/analitik_page.dart
import 'package:flutter/material.dart';

class AnalitikPage extends StatelessWidget {
  const AnalitikPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Membungkus dengan Material agar tidak terjadi error layar merah
    return Material(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.end, // Agar tombol Terapkan berada di kanan
          children: [
            // TextField: Dari tanggal
            _buildDateField('Dari tanggal'),
            const SizedBox(height: 16),

            // TextField: Sampai tanggal
            _buildDateField('Sampai tanggal'),
            const SizedBox(height: 16),

            // Tombol Terapkan
            OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.grey.shade300,
                foregroundColor: Colors.black,
                side: const BorderSide(color: Colors.black54),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                minimumSize: const Size(100, 40),
              ),
              child: const Text('Terapkan'),
            ),
          ],
        ),
      ),
    );
  }

  // Fungsi bantuan untuk membuat input tanggal beserta ikonnya
  Widget _buildDateField(String hint) {
    return TextField(
      readOnly:
          true, // Biasanya input tanggal tidak diketik manual, tapi pakai pemilih tanggal (Date Picker)
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(color: Colors.black87, fontSize: 16),
        border: const OutlineInputBorder(),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 12,
          vertical: 14,
        ),
        suffixIcon: const Icon(
          Icons.edit_calendar,
          color: Colors.black87,
        ), // Ikon kalender di kanan
      ),
      onTap: () {
        // Logika untuk memunculkan kalender (Date Picker) nanti bisa ditambahkan di sini
      },
    );
  }
}
