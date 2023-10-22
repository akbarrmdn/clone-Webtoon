import 'package:flutter/material.dart';
import 'package:webtoon/bottomNav.dart';
import 'package:webtoon/daftar.dart';
import 'package:webtoon/genres.dart';
import 'package:webtoon/hal2.dart';
import 'package:webtoon/homepage.dart';
import 'package:webtoon/hal1.dart';
import 'package:webtoon/hal3.dart';

import 'package:webtoon/login.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          textTheme: const TextTheme(
            bodyLarge: TextStyle(color: Colors.white),
          ),
          appBarTheme: const AppBarTheme(
            elevation: 0,
            color: Colors.white, // Ubah warna AppBar menjadi putih di sini
            iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
          ),
        ),
        home: const Hal1(),
        routes: {
          '/a': (BuildContext context) => const Hal1(),
          '/b': (BuildContext context) => const Hal2(),
          '/c': (BuildContext context) => const Hal3(),
          '/d': (BuildContext context) => Login(),
          '/e': (BuildContext context) => const MyApp(),
          '/f': (BuildContext context) => Genres(),
          '/g': (BuildContext context) => RegistrationPage(),
          '/h': (BuildContext context) => const HomePage(),
        });
  }
}
