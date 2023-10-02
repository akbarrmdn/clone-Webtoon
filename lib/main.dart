import 'package:flutter/material.dart';
import 'package:webtoon/hal2.dart';
// import 'package:webtoon/homePage.dart';
import 'package:webtoon/hal1.dart';

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
          textTheme: TextTheme(
            bodyText1: TextStyle(color: Colors.white),
          ),
          appBarTheme: AppBarTheme(
            elevation: 0,
            color: Colors.white, // Ubah warna AppBar menjadi putih di sini
            iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
          ),
        ),
        home: Hal1(),
        routes: {
          '/a': (BuildContext context) => const Hal1(),
          '/b': (BuildContext context) => const Hal2(),
        });
  }
}
