import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:petani_kita/screens/list_artikel_details_screen.dart';
import 'package:http/http.dart' as http;

import '../service.dart';

class listartikel extends StatefulWidget {
  const listartikel({super.key});

  @override
  State<listartikel> createState() => _listartikelState();
}

class _listartikelState extends State<listartikel> {
  late Future<List<dynamic>> _articles;

  @override
  void initState() {
    super.initState();
    _articles = ArticleService.fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          centerTitle: true,
          leading: Icon(Icons.arrow_back_ios_new),
          title: Text('Artikel'),
          backgroundColor: Color(0xFF1BBA66),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(56),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Cari artikel...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  contentPadding: EdgeInsets.zero,
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
          ),
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
          ),
        ),
        body: FutureBuilder<List<dynamic>>(
            future: _articles,
            builder: (context, snapshot) => ListView.builder(
                itemCount: snapshot.data?.length,
                itemBuilder: (context, index) {
                  Map<String, dynamic> article = snapshot.data![index];
                  return InkWell(
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  SecondRoute(article: article))),
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black12, offset: Offset(2, -2))
                            ],
                            color: Colors.white),
                        margin:
                            EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        height: 100,
                        child: Row(
                          children: [
                            Expanded(
                              child: Row(children: [
                                SizedBox(
                                  width: 20,
                                ),
                                Container(
                                  height: 70,
                                  width: 70,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    image: DecorationImage(
                                        image:
                                            NetworkImage(article['urlToImage']),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Expanded(child: Text(article['title'])),
                                IconButton(
                                  onPressed: () => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                SecondRoute(article: article))),
                                  },
                                  icon: Icon(Icons.arrow_forward_ios_rounded),
                                )
                              ]),
                            ),
                          ],
                        )),
                  );
                })));
  }
}
