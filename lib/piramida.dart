// screens/piramida_screen.dart
import 'package:flutter/material.dart';
import 'dart:math';

double kelilingTotalPiramida(double sisi, double
 tinggi) {
  double kelilingAlas = 4 * sisi;
  double rusukTegak = sqrt(pow(sisi / 2, 2) + pow(tinggi, 2));
  double totalKeliling = kelilingAlas + 4 * rusukTegak;
  return totalKeliling;
}

class PiramidaScreen extends StatefulWidget {
  @override
  _PiramidaScreenState createState() => _PiramidaScreenState();
}

class _PiramidaScreenState extends State<PiramidaScreen> {
  final _sisiController = TextEditingController();
  final _tinggiController = TextEditingController();
  double _volume = 0;
  double _keliling = 0;

  void _hitungVolumeDanKeliling() {
    double sisi = double.tryParse(_sisiController.text) ?? 0;
    double tinggi = double.tryParse(_tinggiController.text) ?? 0;

    setState(() {
      _volume = (1 / 3) * (sisi * sisi) * tinggi;
      _keliling = kelilingTotalPiramida(sisi, tinggi);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Piramida')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Hitung Volume dan Keliling Piramida',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.pink),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            TextField(
              controller: _sisiController,
              decoration: InputDecoration(labelText: 'Sisi Alas Piramida'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            TextField(
              controller: _tinggiController,
              decoration: InputDecoration(labelText: 'Tinggi Piramida'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _hitungVolumeDanKeliling,
              child: Text('Hitung'),
            ),
            SizedBox(height: 20),
            Card(
              color: Colors.pink[50],
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text('Volume: $_volume',
                        style: TextStyle(fontSize: 18, color: Colors.pink)),
                    SizedBox(height: 10),
                    Text('Keliling Total: $_keliling',
                        style: TextStyle(fontSize: 18, color: Colors.pink)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
