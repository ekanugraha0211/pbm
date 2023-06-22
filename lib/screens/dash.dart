import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import '../model/artikel.dart';
import '../model/pakarpertanian.dart';
import '../service.dart';
import 'detail_pakar.dart';
import 'list_artikel_details_screen.dart';
import 'list_artikel_screen.dart';
import 'list_pakarpertanian_screen.dart';

class dashboard extends StatefulWidget {
  const dashboard({super.key});

  @override
  State<dashboard> createState() => _dashboardState();
}

class _dashboardState extends State<dashboard> {
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
          toolbarHeight: 90,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Halo teman tani !',
                style: TextStyle(fontSize: 14),
              ),
              Text('Konsultasikan Tanamanmu')
            ],
          ),
          backgroundColor: Color(0xFF1BBA66),
          bottom: PreferredSize(
            preferredSize: Size.fromHeight(40),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Cari pakar tanaman...',
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
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(children: [
                  Text(
                    "Pakar Terpopuler",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => listpakarpertanian())),
                    },
                    icon: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ]),
                SizedBox(height: 10),
                SizedBox(
                  width: 500,
                  height: 160,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 4,
                      itemBuilder: (context, index) {
                        Pakarpertanian pakarpertanian =
                            pakarpertanianlist[index];
                        return InkWell(
                            onTap: () => {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ProfileScreen())),
                                },
                            child: Card(
                              child: Container(
                                width: 100,
                                height: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: Color(0xFF1BBA66)),
                                margin: EdgeInsets.only(left: 4, right: 4),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Image.network(pakarpertanian.imageUrl,
                                        height: 100),
                                    SizedBox(height: 5),
                                    Text(
                                      pakarpertanian.title,
                                      style: TextStyle(
                                          fontSize: 10,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                      textAlign: TextAlign.center,
                                    )
                                  ],
                                ),
                              ),
                            ));
                      }),
                ),
                SizedBox(height: 10),
                Row(children: [
                  Text(
                    "Artikel Terpopuler",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    onPressed: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => listartikel())),
                    },
                    icon: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ]),
                SizedBox(height: 10),
                SizedBox(
                  height: 300,
                  width: 500,
                  child: FutureBuilder<List<dynamic>>(
                      future: _articles,
                      builder: (context, snapshot) => ListView.builder(
                          itemCount: snapshot.data?.length,
                          itemBuilder: (context, index) {
                            Map<String, dynamic> article =
                                snapshot.data![index];
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
                                            color: Colors.black12,
                                            offset: Offset(2, -2))
                                      ],
                                      color: Colors.white),
                                  margin: EdgeInsets.symmetric(
                                      horizontal: 40, vertical: 20),
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
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              image: DecorationImage(
                                                  image: NetworkImage(
                                                      article['urlToImage']),
                                                  fit: BoxFit.cover),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Expanded(
                                              child: Text(article['title'])),
                                          IconButton(
                                            onPressed: () => {
                                              Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          SecondRoute(
                                                              article:
                                                                  article))),
                                            },
                                            icon: Icon(Icons
                                                .arrow_forward_ios_rounded),
                                          )
                                        ]),
                                      ),
                                    ],
                                  )),
                            );
                          })),
                )
              ],
            ),
          ),
        ));
  }
}
