import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:petani_kita/firebase_options.dart';
import 'package:petani_kita/screens/home.dart';
import 'package:petani_kita/screens/login/LoginScreens.dart';
import 'screens/list_artikel_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.green,
        ),
        home: LoginScreens());
  }
}
