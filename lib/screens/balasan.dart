import 'package:flutter/material.dart';
import '../model/konsultasi.dart';

void main() {
  runApp(balasan());
}

class balasan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text Demo',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: const Text('Konsultasi'),
          flexibleSpace: Container(
            decoration: BoxDecoration(
              color: Color(0xFF1BBA66),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Prof. Eka Prasetya Nugraha M.p',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
              Text(
                'Jika melihat bercak berbentukt epung pada dedaunan tanaman, kemungkinan besar anda memiliki kasus penyakit jamur embun tepung yang sangat umum. Meskipun ada obat kimiawi untuk embun tepung, hanya sedikit yang menggunakannya.Solusi yang lebih baik adalah dengan mengikuti praktik budaya yang baik, jika diinginkan juga bisa menggunakan semprotan embun tepung buatan sendiri yang sederhana.',
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
