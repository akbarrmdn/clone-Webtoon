import 'package:flutter/material.dart';

import 'package:webtoon/homepage.dart';
import 'package:webtoon/page2.dart';
import 'package:webtoon/page3.dart';
import 'package:webtoon/page4.dart';
import 'package:webtoon/page5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Colors
                .black, // Mengubah warna latar belakang Bottom Navigation Bar menjadi hitam
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
          appBarTheme: const AppBarTheme(
            elevation: 1,
            color: Colors.white, // Ubah warna AppBar menjadi putih di sini
            iconTheme: IconThemeData(color: Color.fromRGBO(40, 40, 40, 1)),
          ),
          fontFamily: 'Poppins',
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        title: 'Flutter Demo',
        home: const Scaffold(
          body: HomePage2(title: 'Flutter Demo Home Page'),
        ));
  }
}

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key, required this.title});

  final String title;

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  int selectedIndex = 0;
  void setSelectedIndex(index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: selectedIndex,
        children: [
          const HomePage(),
          Page2(),
          const Page3(),
          const Page4(),
          const Page5(),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: Container(
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color.fromARGB(255, 27, 27, 27),

          currentIndex: selectedIndex,
          onTap: (index) {
            setSelectedIndex(index);
          },

          unselectedItemColor: Colors.grey, // Warna ikon yang tidak dipilih
          selectedItemColor: Colors.green, // Warna ikon yang dipilih
          items: const [
            BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.home,
              ),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.video_call_outlined),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.shop),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Icon(Icons.person),
            ),
          ],
          // Padding untuk membuat ikon di tengah
          iconSize: 24.0,
          selectedFontSize: 0, // Menghilangkan teks di bawah ikon yang dipilih
          unselectedFontSize:
              0, // Menghilangkan teks di bawah ikon yang tidak dipilih
        ),
      ),
    );
  }
}
