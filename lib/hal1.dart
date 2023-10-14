import 'package:flutter/material.dart';

class Hal1 extends StatefulWidget {
  const Hal1({super.key});

  @override
  State<Hal1> createState() => _Hal1State();
}

class _Hal1State extends State<Hal1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 27, 27),
      body: Container(
        padding: const EdgeInsets.only(top: 45, left: 15, right: 15),
        child: Column(
          children: [
            Container(
              child: const Row(
                children: [
                  Text(
                    "Tahap 1 dan 3",
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
            const SizedBox(
              height: 20,
            ),
            Container(
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    "Pilih semua genre",
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                  Text(
                    "kesukaanmu",
                    style: TextStyle(color: Colors.white, fontSize: 32),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Row(
                  children: [
                    Container(
                      width: 175.0, // Lebar
                      height:
                          50.0, // Tinggi (lebih pendek dari lebar untuk membuat oval yang tidak bulat)
                      decoration: BoxDecoration(
                        color: Colors.black, // Warna latar belakang
                        shape: BoxShape
                            .rectangle, // Tetapkan bentuk container sebagai persegi panjang
                        borderRadius: BorderRadius.circular(
                            30.0), // Buat sudut melengkung untuk membuatnya menjadi oval
                        border: Border.all(
                          color: Colors.green, // Warna border (hijau)
                          width: 1.0, // Lebar border
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 20)),
                          Icon(
                            Icons
                                .check, // Ikon yang sesuai dengan "correct" (gunakan ikon lain jika perlu)
                            color: Colors.green, // Warna ikon
                          ),
                          SizedBox(width: 8.0), // Jarak antara ikon dan teks
                          Text(
                            'Komedi',
                            style: TextStyle(
                                color: Colors
                                    .white), // Ganti dengan warna teks yang diinginkan
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 175.0, // Lebar
                      height:
                          50.0, // Tinggi (lebih pendek dari lebar untuk membuat oval yang tidak bulat)
                      decoration: BoxDecoration(
                        color: Colors.black, // Warna latar belakang
                        shape: BoxShape
                            .rectangle, // Tetapkan bentuk container sebagai persegi panjang
                        borderRadius: BorderRadius.circular(
                            30.0), // Buat sudut melengkung untuk membuatnya menjadi oval
                        border: Border.all(
                          color: Colors.white, // Warna border (hijau)
                          width: 1.0, // Lebar border
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 20)),
                          Icon(
                            Icons
                                .check, // Ikon yang sesuai dengan "correct" (gunakan ikon lain jika perlu)
                            color: Colors.white, // Warna ikon
                          ),
                          SizedBox(width: 8.0), // Jarak antara ikon dan teks
                          Text(
                            'Fantasi',
                            style: TextStyle(color: Colors.white),
                            // Ganti dengan warna teks yang diinginkan
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 175.0, // Lebar
                      height:
                          50.0, // Tinggi (lebih pendek dari lebar untuk membuat oval yang tidak bulat)
                      decoration: BoxDecoration(
                        color: Colors.black, // Warna latar belakang
                        shape: BoxShape
                            .rectangle, // Tetapkan bentuk container sebagai persegi panjang
                        borderRadius: BorderRadius.circular(
                            30.0), // Buat sudut melengkung untuk membuatnya menjadi oval
                        border: Border.all(
                          color: Colors.green, // Warna border (hijau)
                          width: 1.0, // Lebar border
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 20)),
                          Icon(
                            Icons
                                .check, // Ikon yang sesuai dengan "correct" (gunakan ikon lain jika perlu)
                            color: Colors.green, // Warna ikon
                          ),
                          SizedBox(width: 8.0), // Jarak antara ikon dan teks
                          Text(
                            'Drama',
                            style: TextStyle(
                                color: Colors
                                    .white), // Ganti dengan warna teks yang diinginkan
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 175.0, // Lebar
                      height:
                          50.0, // Tinggi (lebih pendek dari lebar untuk membuat oval yang tidak bulat)
                      decoration: BoxDecoration(
                        color: Colors.black, // Warna latar belakang
                        shape: BoxShape
                            .rectangle, // Tetapkan bentuk container sebagai persegi panjang
                        borderRadius: BorderRadius.circular(
                            30.0), // Buat sudut melengkung untuk membuatnya menjadi oval
                        border: Border.all(
                          color: Colors.white, // Warna border (hijau)
                          width: 1.0, // Lebar border
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 20)),
                          Icon(
                            Icons
                                .check, // Ikon yang sesuai dengan "correct" (gunakan ikon lain jika perlu)
                            color: Colors.white, // Warna ikon
                          ),
                          SizedBox(width: 8.0), // Jarak antara ikon dan teks
                          Text(
                            'Kerajaan',
                            style: TextStyle(
                                color: Colors
                                    .white), // Ganti dengan warna teks yang diinginkan
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 175.0, // Lebar
                      height:
                          50.0, // Tinggi (lebih pendek dari lebar untuk membuat oval yang tidak bulat)
                      decoration: BoxDecoration(
                        color: Colors.black, // Warna latar belakang
                        shape: BoxShape
                            .rectangle, // Tetapkan bentuk container sebagai persegi panjang
                        borderRadius: BorderRadius.circular(
                            30.0), // Buat sudut melengkung untuk membuatnya menjadi oval
                        border: Border.all(
                          color: Colors.white, // Warna border (hijau)
                          width: 1.0, // Lebar border
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 20)),
                          Icon(
                            Icons
                                .check, // Ikon yang sesuai dengan "correct" (gunakan ikon lain jika perlu)
                            color: Colors.white, // Warna ikon
                          ),
                          SizedBox(width: 8.0), // Jarak antara ikon dan teks
                          Text(
                            'Romantis',
                            style: TextStyle(
                                color: Colors
                                    .white), // Ganti dengan warna teks yang diinginkan
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 175.0, // Lebar
                      height:
                          50.0, // Tinggi (lebih pendek dari lebar untuk membuat oval yang tidak bulat)
                      decoration: BoxDecoration(
                        color: Colors.black, // Warna latar belakang
                        shape: BoxShape
                            .rectangle, // Tetapkan bentuk container sebagai persegi panjang
                        borderRadius: BorderRadius.circular(
                            30.0), // Buat sudut melengkung untuk membuatnya menjadi oval
                        border: Border.all(
                          color: Colors.green, // Warna border (hijau)
                          width: 1.0, // Lebar border
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 20)),
                          Icon(
                            Icons
                                .check, // Ikon yang sesuai dengan "correct" (gunakan ikon lain jika perlu)
                            color: Colors.green, // Warna ikon
                          ),
                          SizedBox(width: 8.0), // Jarak antara ikon dan teks
                          Text(
                            'Slice of life',
                            style: TextStyle(
                                color: Colors
                                    .white), // Ganti dengan warna teks yang diinginkan
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Container(
                      width: 175.0, // Lebar
                      height:
                          50.0, // Tinggi (lebih pendek dari lebar untuk membuat oval yang tidak bulat)
                      decoration: BoxDecoration(
                        color: Colors.black, // Warna latar belakang
                        shape: BoxShape
                            .rectangle, // Tetapkan bentuk container sebagai persegi panjang
                        borderRadius: BorderRadius.circular(
                            30.0), // Buat sudut melengkung untuk membuatnya menjadi oval
                        border: Border.all(
                          color: Colors.white, // Warna border (hijau)
                          width: 1.0, // Lebar border
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 20)),
                          Icon(
                            Icons
                                .check, // Ikon yang sesuai dengan "correct" (gunakan ikon lain jika perlu)
                            color: Colors.white, // Warna ikon
                          ),
                          SizedBox(width: 8.0), // Jarak antara ikon dan teks
                          Text(
                            'Drama',
                            style: TextStyle(
                                color: Colors
                                    .white), // Ganti dengan warna teks yang diinginkan
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: 175.0, // Lebar
                      height:
                          50.0, // Tinggi (lebih pendek dari lebar untuk membuat oval yang tidak bulat)
                      decoration: BoxDecoration(
                        color: Colors.black, // Warna latar belakang
                        shape: BoxShape
                            .rectangle, // Tetapkan bentuk container sebagai persegi panjang
                        borderRadius: BorderRadius.circular(
                            30.0), // Buat sudut melengkung untuk membuatnya menjadi oval
                        border: Border.all(
                          color: Colors.white, // Warna border (hijau)
                          width: 1.0, // Lebar border
                        ),
                      ),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(padding: EdgeInsets.only(left: 20)),
                          Icon(
                            Icons
                                .check, // Ikon yang sesuai dengan "correct" (gunakan ikon lain jika perlu)
                            color: Colors.white, // Warna ikon
                          ),
                          SizedBox(width: 8.0), // Jarak antara ikon dan teks
                          Text(
                            'Kerajaan',
                            style: TextStyle(
                                color: Colors
                                    .white), // Ganti dengan warna teks yang diinginkan
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/b');
            // Handler saat tombol "Selanjutnya" ditekan
          },
          child: const Text(
            'Berikutnya',
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
