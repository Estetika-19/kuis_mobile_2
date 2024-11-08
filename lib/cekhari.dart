import 'package:flutter/material.dart';

class CekHariScreen extends StatefulWidget {
  @override
  _CekHariScreenState createState() => _CekHariScreenState();
}

class _CekHariScreenState extends State<CekHariScreen> {
  final _controller = TextEditingController();
  String _hari = '';
  String _error = '';

  void _cekHari() {
    setState(() {
      _error = ''; // Reset error message
      int? nomor = int.tryParse(_controller.text);

      if (nomor == null || nomor < 1 || nomor > 7) {
        // Jika input bukan angka atau tidak di antara 1 dan 7
        _error = 'Masukkan nomor antara 1 dan 7';
        _hari = '';
      } else {
        List<String> hari = [
          'Senin',
          'Selasa',
          'Rabu',
          'Kamis',
          'Jumat',
          'Sabtu',
          'Minggu'
        ];
        _hari = hari[nomor - 1];
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Cek Hari')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _controller,
              decoration:
                  InputDecoration(labelText: 'Masukkan nomor hari (1-7)'),
              keyboardType: TextInputType.number,
            ),
            ElevatedButton(
              onPressed: _cekHari,
              child: Text('Cek Hari'),
            ),
            if (_error.isNotEmpty) // Tampilkan error jika ada
              Text(
                _error,
                style: TextStyle(color: Colors.red),
              ),
            if (_hari.isNotEmpty) Text('Hari: $_hari'),
          ],
        ),
      ),
    );
  }
}
