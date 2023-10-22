import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(Page2());
}

class Page2 extends StatelessWidget {
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
                      text: 'Daily',
                    ),
                    Tab(
                      text: 'Genres',
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Icon(Icons.camera),
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
                Expanded(
                  child: TabBarView(
                    children: [
                      // Tab 1: Daily
                      DefaultTabController(
                        length: 8, // Jumlah tab hari
                        child: Scaffold(
                          backgroundColor: Color.fromARGB(255, 27, 27, 27),
                          appBar: TabBar(
                            labelColor: Colors.white, // Warna teks terpilih
                            unselectedLabelColor:
                                Colors.grey, // Warna teks tidak terpilih
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                            isScrollable: true, // Memungkinkan pengguliran tab
                            tabs: [
                              Tab(text: 'MON'),
                              Tab(text: 'TUE'),
                              Tab(text: 'WED'),
                              Tab(text: 'THU'),
                              Tab(text: 'FRI'),
                              Tab(text: 'SAT'),
                              Tab(text: 'SUN'),
                              Tab(text: 'COMPLETED'),
                            ],
                            // Mengubah warna garis bawah menjadi putih
                            indicatorColor: Colors.white,
                          ),
                          body: TabBarView(
                            children: [
                              HariSenin(),
                              HariSenin(),
                              HariSenin(),
                              HariSenin(),
                              HariSenin(),
                              HariSenin(),
                              HariSenin(),
                              HariSenin(),
                            ],
                          ),
                        ),
                      ),
                      // Tab 2: Genres
                      DefaultTabController(
                        length: 8, // Jumlah tab hari
                        child: Scaffold(
                          backgroundColor: Color.fromARGB(255, 27, 27, 27),
                          appBar: TabBar(
                            labelColor: Colors.white, // Warna teks terpilih
                            unselectedLabelColor:
                                Colors.grey, // Warna teks tidak terpilih
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                            isScrollable: true, // Memungkinkan pengguliran tab
                            tabs: [
                              Tab(text: 'DRAMA'),
                              Tab(text: 'FANTASY'),
                              Tab(text: 'COMEDY'),
                              Tab(text: 'ACTION'),
                              Tab(text: 'SLICE OF LIFE'),
                            ],

                            // Mengubah warna garis bawah menjadi putih
                            indicatorColor: Colors.white,
                          ),
                          body: TabBarView(
                            children: [
                              HariSelasa(),
                              HariSelasa(),
                              HariSelasa(),
                              HariSelasa(),
                              HariSelasa(),
                              HariSelasa(),
                              HariSelasa(),
                              HariSelasa(),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class HariSenin extends StatelessWidget {
  const HariSenin({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final random = Random();
    return Padding(
      padding: const EdgeInsets.only(left: 7, right: 7),
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // 3 kolom
          mainAxisSpacing: 2, // Spasi antar baris
          crossAxisSpacing: 2, // Spasi antar kolom
          childAspectRatio: 2 / 3, // Perbandingan lebar-tinggi kartu
        ),
        itemCount: 16, // Jumlah kartu (3 baris x 3 kolom)
        itemBuilder: (context, index) {
          final randomView = (1 + random.nextInt(999)).toString();

          return CardItem(
            title: 'Ayam Pop',
            genre: 'Komik ${index + 1}',
            imagePath: 'images/${index + 1}.jpg',
            view: '${randomView}M',
          );
        },
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String title;
  final String genre;
  final String imagePath;
  final String view;

  const CardItem({
    super.key,
    required this.title,
    required this.genre,
    required this.imagePath,
    required this.view,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 27, 27, 27),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            imagePath,
            width: 110,
            height: 110,
            fit: BoxFit.cover,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 10,
                  color: Colors.grey,
                ),
              ),
              Text(
                genre,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.favorite,
                    color: Colors.green,
                    size: 16,
                  ),
                  Text(' $view',
                      style: const TextStyle(
                        fontSize: 12,
                        color: Colors.green,
                      )),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class HariSelasa extends StatelessWidget {
  const HariSelasa({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final random = Random();

    return Padding(
      padding: const EdgeInsets.only(left: 7, right: 7),
      child: ListView.builder(
        itemCount: 16, // Jumlah kartu
        itemBuilder: (context, index) {
          final randomView = (1 + random.nextInt(999)).toString();

          return CardItem2(
            title:
                'ini adalah deskripsi dari komik ini ,jika ini memiliki deskripsi berarti komik ini bagus , udah gitu aja sih ,terus mau gmana lagi yekan ',
            genre: 'Komik ${index + 1}',
            imagePath: 'images/${index + 1}.jpg',
            view: '${randomView}M',
          );
        },
      ),
    );
  }
}

class CardItem2 extends StatelessWidget {
  final String title;
  final String genre;
  final String imagePath;
  final String view;

  const CardItem2({
    Key? key,
    required this.title,
    required this.genre,
    required this.imagePath,
    required this.view,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Image.asset(
            imagePath,
            width: 110,
            height: 110,
            fit: BoxFit.cover,
          ),
          SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  genre,
                  style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: Colors.green,
                      size: 16,
                    ),
                    Text(' $view',
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.green,
                        )),
                  ],
                ),
                const SizedBox(height: 5),
                Text(
                  title,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 10,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
