import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 70, // Memperbesar ukuran foto profil
              backgroundImage: AssetImage(
                  'assets/WhatsApp Image 2024-10-30 at 10.16.13 PM.jpg'), // Pastikan gambar ada di folder assets
            ),
            SizedBox(height: 16),
            Text(
              'Nama: Estetika Nusantara Yutardo',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('NIM: 124220060', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text('Tempat Lahir: Jambi', style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text('Tanggal Lahir: 19 November 2024',
                style: TextStyle(fontSize: 16)),
            SizedBox(height: 8),
            Text('Hobi: Membaca', style: TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}
