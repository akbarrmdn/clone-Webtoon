import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: SafeArea(
          child: Scaffold(
            backgroundColor: Color.fromARGB(255, 27, 27, 27),
            body: Column(
              children: <Widget>[
                TabBar(
                  tabs: [
                    Tab(
                      text: ' Spotlight',
                    ),
                    Tab(
                      text: 'Genres',
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Spacer(),
                        Icon(Icons.search),
                      ],
                    ),
                  ],
                  indicator: BoxDecoration(
                    color: Color.fromARGB(
                        255, 27, 27, 27), // Warna latar belakang tab
                  ),
                  labelColor: Colors.white, // Warna teks terpilih
                  unselectedLabelColor:
                      Colors.grey, // Warna teks tidak terpilih
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
