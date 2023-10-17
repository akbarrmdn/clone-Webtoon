import 'package:flutter/material.dart';

class Genres extends StatefulWidget {
  const Genres({Key? key}) : super(key: key);

  @override
  State<Genres> createState() => _GenresState();
}

class _GenresState extends State<Genres> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 27, 27),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 12,
          ),
          Row(
            children: [
              const Expanded(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: 'Search title or creator',
                      hintStyle: TextStyle(color: Colors.grey),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white, // Warna border
                          width: 1.0, // Lebar border
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        vertical: 10.0,
                        horizontal: 12,
                      ), // Mengatur tinggi border
                    ),
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Tambahkan logika ketika tombol "cancel" ditekan di sini
                },
                child:
                    const Text("Cancel", style: TextStyle(color: Colors.grey)),
              ),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    childAspectRatio: 0.8,
                  ),
                  itemBuilder: (BuildContext context, int index) {
                    final icons = [
                      Icons.masks,
                      Icons.heat_pump,
                      Icons.face,
                      Icons.favorite,
                      Icons.star,
                      Icons.sunny,
                      Icons.heart_broken,
                      Icons.sick_outlined,
                      Icons.note,
                      Icons.shop,
                      Icons.cloud_circle,
                      Icons.lock_clock,
                      Icons.wallet_membership_rounded,
                      Icons.home,
                      Icons.money,
                      Icons.book,
                      // Tambahkan ikon lainnya di sini
                    ];

                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Column(
                        children: [
                          Container(
                            width: 80.0,
                            height: 80.0,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromARGB(255, 39, 39, 39),
                            ),
                            child: Center(
                              child: Icon(
                                icons[index],
                                size: 30.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 6),
                          const Text(
                            "Genre",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                  itemCount: 16,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
