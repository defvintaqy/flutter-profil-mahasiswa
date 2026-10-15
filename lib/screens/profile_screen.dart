import 'package:flutter/material.dart';

import '../widgets/action_buttons.dart';
import '../widgets/profile_header.dart';
import '../widgets/profile_info.dart';
import '../widgets/social_media_row.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profil Mahasiswa'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: const Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 24),
                    // Header khusus Foto + Nama + NIM (Latihan 4b)
                    ProfileHeader(
                      name: 'Nama Mahasiswa',
                      nim: '21.11.0000',
                    ),
                    SizedBox(height: 24),
                    // ProfileInfo hanya untuk info detail sisanya
                    ProfileInfo(
                      programStudi: 'S1 Informatika',
                      email: 'email@students.amikom.ac.id',
                      lokasi: 'Yogyakarta, Indonesia',
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
            ActionButtons(),
            SizedBox(height: 16),
            SocialMediaRow(),
          ],
        ),
      ),
    );
  }
}
