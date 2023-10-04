import 'package:flutter/material.dart';

class Hal2 extends StatefulWidget {
  const Hal2({super.key});

  @override
  State<Hal2> createState() => _Hal2();
}

class _Hal2 extends State<Hal2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 27, 27),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Container(
              color: Colors.transparent,
              padding: EdgeInsets.only(top: 30, left: 0, right: 15),
              child: Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  SizedBox(width: 0),
                  Text(
                    "Tahap 2 dan 3",
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(),
                  Text(
                    "Lewati",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              padding: EdgeInsets.only(top: 30, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Pilih gaya gambar",
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                  Text(
                    "yang kamu suka",
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                ],
              ),
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 10.0, vertical: 12.0),
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
            Navigator.pushNamed(context, '/c');
            // Handler saat tombol "Selanjutnya" ditekan
          },
          child: Text(
            'Selanjutnya',
            style:
                TextStyle(fontSize: 18), // Ganti dengan gaya teks yang sesuai
          ),
          style: ElevatedButton.styleFrom(
            primary: Colors.green[300], // Warna latar belakang tombol
            minimumSize: Size(
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
