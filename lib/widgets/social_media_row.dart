import 'package:flutter/material.dart';

class SocialMediaRow extends StatelessWidget {
  const SocialMediaRow({super.key});

  // Helper function untuk menampilkan SnackBar
  void _showSnackBar(BuildContext context, String platformName) {
    ScaffoldMessenger.of(context).clearSnackBars(); // Bersihkan SnackBar sebelumnya jika ada
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Membuka $platformName'),
        duration: const Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        IconButton(
          icon: const Icon(Icons.camera_alt), // Visual pengganti Instagram
          tooltip: 'Instagram',
          onPressed: () => _showSnackBar(context, 'Instagram'),
        ),
        IconButton(
          icon: const Icon(Icons.business_center), // Visual pengganti LinkedIn
          tooltip: 'LinkedIn',
          onPressed: () => _showSnackBar(context, 'LinkedIn'),
        ),
        IconButton(
          icon: const Icon(Icons.code), // Visual pengganti GitHub
          tooltip: 'GitHub',
          onPressed: () => _showSnackBar(context, 'GitHub'),
        ),
      ],
    );
  }
}