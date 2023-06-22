import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class inputkonsul extends StatefulWidget {
  @override
  _inputkonsulState createState() => _inputkonsulState();
}

class _inputkonsulState extends State<inputkonsul> {
  String _inputText = '';
  String _selectedImagePath = '';

  void _handleInputChange(String value) {
    setState(() {
      _inputText = value;
    });
  }

  void _handleSendButtonPress() {
    // Lakukan tugas pengiriman hasil input teks dan foto
    print('Hasil input teks: $_inputText');
    print('Path gambar: $_selectedImagePath');

    _showSuccessDialog();
  }

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedImage = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      if (pickedImage != null) {
        _selectedImagePath = pickedImage.path;
      } else {
        print('Tidak ada gambar yang dipilih.');
      }
    });
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Konsultasi Berhasil Terkirim'),
          content: Text('Terima kasih atas konsultasinya.'),
          actions: <Widget>[
            TextButton(
              child: Text('Tutup'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Konsultasi'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: 20),
            IconButton(
              onPressed: _pickImage,
              icon: Icon(Icons.camera_alt_rounded),
              tooltip: 'Pilih Gambar',
            ),
            SizedBox(height: 20),
            _selectedImagePath.isNotEmpty
                ? Image.file(
                    File(_selectedImagePath),
                    height: 200,
                  )
                : Container(),
            TextFormField(
              onChanged: _handleInputChange,
              decoration: InputDecoration(
                labelText: 'Masukkan Konsultasi',
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: _handleSendButtonPress,
              child: Text('Kirim'),
            ),
          ],
        ),
      ),
    );
  }
}
