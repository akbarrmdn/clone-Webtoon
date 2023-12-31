import 'package:flutter/material.dart';

class Hal3 extends StatelessWidget {
  const Hal3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 27, 27),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              color: Colors.transparent,
              padding: const EdgeInsets.only(top: 30, left: 0, right: 15),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  const SizedBox(width: 0),
                  const Text(
                    "Tahap 3 dan 3",
                    style: TextStyle(color: Colors.white),
                  ),
                  const Spacer(),
                  const Text(
                    "Lewati",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Pilih Webtoon yang",
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                  Text(
                    "menarik bagimu",
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                ],
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 1,
              mainAxisExtent: 180.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
                  child: ImageCard(
                    imagePath:
                        "images/k${index + 1}.jpg", // Sesuaikan dengan path gambar Anda
                  ),
                );
              },
              childCount: 12,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/d');
            // Handler saat tombol "Selanjutnya" ditekan
          },
          child: const Text(
            'Selesai',
            style:
                TextStyle(fontSize: 18), // Ganti dengan gaya teks yang sesuai
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.green[300], // Warna latar belakang tombol
            minimumSize: const Size(
                double.infinity, 50), // Tombol memenuhi lebar dan tinggi 50
          ),
        ),
      ),
    );
  }
}

class ImageCard extends StatelessWidget {
  final String imagePath;

  const ImageCard({Key? key, required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Image.asset(
        imagePath,
        fit: BoxFit.cover,
      ),
    );
  }
}
