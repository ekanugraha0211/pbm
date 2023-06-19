import 'package:flutter/material.dart';
import '../model/konsultasi.dart';
import 'list_konsultasi_details_screen.dart';

class listkonsultasi extends StatelessWidget {
  const listkonsultasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text(' Daftar Konsultasi'),
        backgroundColor: Color(0xFF1BBA66),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(56),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Cari Konsultasi...',
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
        )),
      ),
      body: ListView.builder(
          itemCount: Konsultasilist.length,
          itemBuilder: (context, index) {
            Konsultasi konsultasi = Konsultasilist[index];
            return InkWell(
              onTap: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SecondRoute(konsultasi))),
              },
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(color: Colors.black12, offset: Offset(2, -2))
                      ],
                      color: Colors.white),
                  margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
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
                                  image: NetworkImage(konsultasi.imageUrl),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(child: Text(konsultasi.title)),
                          IconButton(
                            onPressed: () => {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          SecondRoute(konsultasi))),
                            },
                            icon: Icon(Icons.arrow_forward_ios_rounded),
                          )
                        ]),
                      ),
                    ],
                  )),
            );
          }),
    );
    
  }
}
