import 'package:flutter/material.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          // a) Gambar/Warna latar belakang berupa Gradien
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.blue, Colors.indigo],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),

          // b) Teks "Tentang Aplikasi" di tengah layar
          const Text(
            'Tentang Aplikasi',
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),

          // c) Tombol "Kembali" di pojok kiri atas
          Positioned(
            top: 40, // Memberikan jarak dari batas atas (statusBar)
            left: 16,
            child: SafeArea(
              child: IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Colors.white,
                  size: 28,
                ),
                onPressed: () {
                  // Navigator pop untuk kembali ke halaman sebelumnya
                  Navigator.pop(context);
                },
                tooltip: 'Kembali',
              ),
            ),
          ),
        ],
      ),
    );
  }
}