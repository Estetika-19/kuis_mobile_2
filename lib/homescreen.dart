import 'package:flutter/material.dart';
import 'package:kuis_2/cekhari.dart';
import 'package:kuis_2/konversiwaktu.dart';
import 'package:kuis_2/piramida.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Menu Utama')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: ListTile(
                leading:
                    Icon(Icons.change_history), // Ikon segitiga untuk piramida
                title: Text('Piramida'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PiramidaScreen()),
                  );
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: ListTile(
                leading: Icon(Icons.access_time), // Ikon untuk konversi waktu
                title: Text('Konversi Waktu'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => KonversiWaktuScreen()),
                  );
                },
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
              child: ListTile(
                leading: Icon(Icons.calendar_today), // Ikon untuk cek hari
                title: Text('Cek Hari'),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CekHariScreen()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
