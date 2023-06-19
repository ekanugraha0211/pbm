import 'package:flutter/material.dart';
import 'package:petani_kita/screens/balasan.dart';
import '../model/konsultasi.dart';

class SecondRoute extends StatelessWidget {
  final Konsultasi konsultasi;

  const SecondRoute(this.konsultasi, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 5),
                  child: Text(
                    konsultasi.title,
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 22.0, fontStyle: FontStyle.italic),
                  ),
                ),
                Image.network(
                  konsultasi.imageUrl,
                ),
                Text(konsultasi.description),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
        onPressed: () {
           Navigator.push(
                context, MaterialPageRoute(builder: (context) => balasan()));
        },
        child: Icon(Icons.arrow_forward),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
      );
  }
}
