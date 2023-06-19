import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:petani_kita/screens/list_artikel_screen.dart';

class SecondRoute extends StatelessWidget {
  final Map<String, dynamic> article;

  SecondRoute({super.key, required this.article});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          title: const Text('Artikel'),
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
                    article['title'],
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontSize: 22.0, fontStyle: FontStyle.italic),
                  ),
                ),
                Image.network(
                  article['urlToImage'],
                ),
                Text(article['content']),
              ],
            ),
          ),
        ));
  }
}
