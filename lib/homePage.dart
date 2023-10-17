import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:webtoon/genres.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 27, 27),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 22,
                  ),
                  Row(
                    children: [
                      Ink.image(
                        image: const AssetImage(
                            'images/webtun.png'), // Ganti dengan path gambar Anda
                        width: 40, // Sesuaikan dengan ukuran gambar Anda
                        height: 40,
                      ),
                      const Spacer(),
                      IconButton(
                        icon: const Icon(
                          Icons.search,
                          color: Colors.white,
                          size: 30,
                        ), // Ikon di sebelah kanan
                        onPressed: () {
                          // Tindakan yang ingin Anda eksekusi saat ikon diklik
                        },
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  const Text(
                    'New Here?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold),
                  ),
                  Row(
                    children: [
                      const Text(
                        'Start with hits read by Millons',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/wp1.jpg', // Ganti dengan path gambar Anda
                              width: 300.0,
                              height: 170.0,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Text(
                              "March si jawir",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                            const SizedBox(
                              height: 4, // Jarak antara judul dan teks
                            ),
                            const SizedBox(
                              width: 300,
                              child: Text(
                                "ini cerita tentang kehidupan si march yang jawir dan dia terkadang awikwok",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/wp2.jpg', // Ganti dengan path gambar Anda
                              width: 300.0,
                              height: 170.0,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Text(
                              "7Th si jawir",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                            const SizedBox(
                              height: 4, // Jarak antara judul dan teks
                            ),
                            const SizedBox(
                              width: 300,
                              child: Text(
                                "ini cerita tentang kehidupan si march yang jawir dan dia terkadang awikwok",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/wp3.jpg', // Ganti dengan path gambar Anda
                              width: 300.0,
                              height: 170.0,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Text(
                              "Wkwk si jawir",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                            const SizedBox(
                              height: 4, // Jarak antara judul dan teks
                            ),
                            const SizedBox(
                              width: 300,
                              child: Text(
                                "ini cerita tentang kehidupan si march yang jawir dan dia terkadang awikwok",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset(
                              'images/wp4.jpg', // Ganti dengan path gambar Anda
                              width: 300.0,
                              height: 170.0,
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            const Text(
                              "Kafka ceunah",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 24),
                            ),
                            const SizedBox(
                              height: 4, // Jarak antara judul dan teks
                            ),
                            const SizedBox(
                              width: 300,
                              child: Text(
                                "ini cerita tentang kehidupan si kafka yang jawir dan dia terkadang awikwok",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 12),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Text(
                    'Find Your Series',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Column(
                    children: [
                      Stack(
                        children: [
                          Image.asset(
                            'images/wp3.jpg',
                            width: 380,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                          Container(
                            width: 380,
                            height: 100,
                            color: Colors.black.withOpacity(
                                0.5), // Sesuaikan opacity sesuai kebutuhan
                          ),
                          const Positioned(
                            top: 30,
                            left: 8, // Sesuaikan posisi teks sesuai kebutuhan
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Answer these question to',
                                  style: TextStyle(
                                    color: Colors
                                        .white, // Sesuaikan warna teks sesuai kebutuhan
                                    fontSize:
                                        16, // Sesuaikan ukuran font sesuai kebutuhan
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  'find your new favorite series',
                                  style: TextStyle(
                                    color: Colors
                                        .white, // Sesuaikan warna teks sesuai kebutuhan
                                    fontSize:
                                        16, // Sesuaikan ukuran font sesuai kebutuhan
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Top Series',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                          ))
                    ],
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Column(
                          children: [
                            TopSeries(
                              seriesNumber:
                                  "1", // Ganti dengan angka yang Anda inginkan
                              imageAsset:
                                  'images/7.jpg', // Ganti dengan path gambar yang sesuai
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            TopSeries(
                              seriesNumber:
                                  "2", // Ganti dengan angka yang Anda inginkan
                              imageAsset:
                                  'images/8.jpg', // Ganti dengan path gambar yang sesuai
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            TopSeries(
                              seriesNumber:
                                  "3", // Ganti dengan angka yang Anda inginkan
                              imageAsset:
                                  'images/9.jpg', // Ganti dengan path gambar yang sesuai
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            TopSeries(
                              seriesNumber:
                                  "4", // Ganti dengan angka yang Anda inginkan
                              imageAsset:
                                  'images/10.jpg', // Ganti dengan path gambar yang sesuai
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            TopSeries(
                              seriesNumber:
                                  "5", // Ganti dengan angka yang Anda inginkan
                              imageAsset:
                                  'images/11.jpg', // Ganti dengan path gambar yang sesuai
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 72,
                        ),
                        Column(
                          children: [
                            TopSeries(
                              seriesNumber:
                                  "1", // Ganti dengan angka yang Anda inginkan
                              imageAsset:
                                  'images/1.jpg', // Ganti dengan path gambar yang sesuai
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            TopSeries(
                              seriesNumber:
                                  "2", // Ganti dengan angka yang Anda inginkan
                              imageAsset:
                                  'images/6.jpg', // Ganti dengan path gambar yang sesuai
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            TopSeries(
                              seriesNumber:
                                  "3", // Ganti dengan angka yang Anda inginkan
                              imageAsset:
                                  'images/3.jpg', // Ganti dengan path gambar yang sesuai
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            TopSeries(
                              seriesNumber:
                                  "4", // Ganti dengan angka yang Anda inginkan
                              imageAsset:
                                  'images/4.jpg', // Ganti dengan path gambar yang sesuai
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            TopSeries(
                              seriesNumber:
                                  "5", // Ganti dengan angka yang Anda inginkan
                              imageAsset:
                                  'images/5.jpg', // Ganti dengan path gambar yang sesuai
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 50,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Stack(
                  children: [
                    Image.asset(
                      'images/wp1.jpg',
                      fit: BoxFit.cover,
                    ),
                    Positioned(
                      top: 0,
                      left: 0,
                      right: 0,
                      bottom: 0,
                      child: Container(
                        color: Colors.black.withOpacity(0.5),
                      ),
                    ),
                    Positioned(
                      top: 120,
                      left: 8, // Sesuaikan posisi teks sesuai kebutuhan
                      child: Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8)),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Read Now',
                              style: TextStyle(
                                color: Colors
                                    .black, // Sesuaikan warna teks sesuai kebutuhan
                                fontSize:
                                    16, // Sesuaikan ukuran font sesuai kebutuhan
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      top: 90,
                      left: 8, // Sesuaikan posisi teks sesuai kebutuhan
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'March Tru stori',
                            style: TextStyle(
                              color: Colors
                                  .white, // Sesuaikan warna teks sesuai kebutuhan
                              fontSize:
                                  16, // Sesuaikan ukuran font sesuai kebutuhan
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Daily',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14),
              child: Column(
                children: [
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CardItem(
                        title: 'Ayam Pop',
                        genre: 'Komik 1',
                        imagePath: 'images/wp1.jpg',
                        view: '7M',
                      ),
                      CardItem(
                        title: 'romance',
                        genre: 'Komik 2',
                        imagePath:
                            'images/wp2.jpg', // Ganti dengan path gambar Anda
                        view: '8.1M',
                      ),
                      CardItem(
                        title: 'action',
                        genre: 'Komik 3',
                        imagePath:
                            'images/wp3.jpg', // Ganti dengan path gambar Anda
                        view: '11M',
                      ),
                    ],
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CardItem(
                        title: 'Ayam Pop',
                        genre: 'Komik 4',
                        imagePath: 'images/k1.jpg',
                        view: '7M',
                      ),
                      CardItem(
                        title: 'romance',
                        genre: 'Komik 5',
                        imagePath:
                            'images/k2.jpg', // Ganti dengan path gambar Anda
                        view: '8.1M',
                      ),
                      CardItem(
                        title: 'action',
                        genre: 'Komik 6',
                        imagePath:
                            'images/k3.jpg', // Ganti dengan path gambar Anda
                        view: '11M',
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'New WEBTOON ORIGINALS',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Image.asset(
                          'images/bailu.jpg',
                          width: 150,
                          height: 240,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'images/blade.jpg',
                          width: 150,
                          height: 240,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'images/qingque.jpg',
                          width: 150,
                          height: 240,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'images/serval.jpg',
                          width: 150,
                          height: 240,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'images/wp1.jpg',
                          width: 150,
                          height: 240,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Top Completed Series',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CardRow(
                              title: 'Ayam Pop',
                              genre: 'Komik 1',
                              imagePath: 'images/q1.jpg',
                            ),
                            CardRow(
                              title: 'romance',
                              genre: 'Komik 2',
                              imagePath:
                                  'images/q5.jpg', // Ganti dengan path gambar Anda
                            ),
                            CardRow(
                              title: 'action',
                              genre: 'Komik 3',
                              imagePath:
                                  'images/q3.jpg', // Ganti dengan path gambar Anda
                            ),
                            CardRow(
                              title: 'action',
                              genre: 'Komik 4',
                              imagePath:
                                  'images/q2.jpg', // Ganti dengan path gambar Anda
                            ),
                            CardRow(
                              title: 'action',
                              genre: 'Komik 5',
                              imagePath:
                                  'images/q6.jpg', // Ganti dengan path gambar Anda
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 14),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Exciting Stories on CANVAS',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24),
                  ),
                  Text(
                    'Series from our Self-Publishing Creators',
                    style: TextStyle(color: Colors.grey, fontSize: 14),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Staff Picks',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CardRow(
                              title: 'Ayam Pop',
                              genre: 'Komik 1',
                              imagePath: 'images/q7.jpg',
                            ),
                            CardRow(
                              title: 'romance',
                              genre: 'Komik 2',
                              imagePath:
                                  'images/q8.jpg', // Ganti dengan path gambar Anda
                            ),
                            CardRow(
                              title: 'action',
                              genre: 'Komik 3',
                              imagePath:
                                  'images/q9.jpg', // Ganti dengan path gambar Anda
                            ),
                            CardRow(
                              title: 'action',
                              genre: 'Komik 4',
                              imagePath:
                                  'images/q10.jpg', // Ganti dengan path gambar Anda
                            ),
                            CardRow(
                              title: 'action',
                              genre: 'Komik 5',
                              imagePath:
                                  'images/q11.jpg', // Ganti dengan path gambar Anda
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'Hidden Gems',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CardRow(
                              title: 'Ayam Pop',
                              genre: 'Komik 1',
                              imagePath: 'images/q5.jpg',
                            ),
                            CardRow(
                              title: 'romance',
                              genre: 'Komik 2',
                              imagePath:
                                  'images/q3.jpg', // Ganti dengan path gambar Anda
                            ),
                            CardRow(
                              title: 'action',
                              genre: 'Komik 3',
                              imagePath:
                                  'images/q2.jpg', // Ganti dengan path gambar Anda
                            ),
                            CardRow(
                              title: 'action',
                              genre: 'Komik 4',
                              imagePath:
                                  'images/q1.jpg', // Ganti dengan path gambar Anda
                            ),
                            CardRow(
                              title: 'action',
                              genre: 'Komik 5',
                              imagePath:
                                  'images/q12.jpg', // Ganti dengan path gambar Anda
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'Rising Stars',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CardRow(
                              title: 'Ayam Pop',
                              genre: 'Komik 1',
                              imagePath: 'images/a7.jpg',
                            ),
                            CardRow(
                              title: 'romance',
                              genre: 'Komik 2',
                              imagePath:
                                  'images/a8.jpg', // Ganti dengan path gambar Anda
                            ),
                            CardRow(
                              title: 'action',
                              genre: 'Komik 3',
                              imagePath:
                                  'images/a9.jpg', // Ganti dengan path gambar Anda
                            ),
                            CardRow(
                              title: 'action',
                              genre: 'Komik 4',
                              imagePath:
                                  'images/a10.jpg', // Ganti dengan path gambar Anda
                            ),
                            CardRow(
                              title: 'action',
                              genre: 'Komik 5',
                              imagePath:
                                  'images/a11.jpg', // Ganti dengan path gambar Anda
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  const Text(
                    'Drama',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold),
                  ),
                  const SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CardRow(
                              title: 'Drama',
                              genre: 'Komik 1',
                              imagePath: 'images/a5.jpg',
                            ),
                            CardRow(
                              title: 'Drama',
                              genre: 'Komik 2',
                              imagePath:
                                  'images/a3.jpg', // Ganti dengan path gambar Anda
                            ),
                            CardRow(
                              title: 'Drama',
                              genre: 'Komik 3',
                              imagePath:
                                  'images/a6.jpg', // Ganti dengan path gambar Anda
                            ),
                            CardRow(
                              title: 'Drama',
                              genre: 'Komik 4',
                              imagePath:
                                  'images/a12.jpg', // Ganti dengan path gambar Anda
                            ),
                            CardRow(
                              title: 'Drama',
                              genre: 'Komik 5',
                              imagePath:
                                  'images/a8.jpg', // Ganti dengan path gambar Anda
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Genres',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>  Genres()));
                          },
                          icon: const Icon(
                            Icons.chevron_right,
                            color: Colors.white,
                          )),
                    ],
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Container(
                          width: 80.0, // Lebar lingkaran
                          height: 80.0, // Tinggi lingkaran
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 39, 39,
                                39), // Warna latar belakang lingkaran
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.masks, // Ikon yang ingin Anda gunakan
                              size: 40.0, // Ukuran ikon
                              color: Colors.white, // Warna ikon
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 80.0, // Lebar lingkaran
                          height: 80.0, // Tinggi lingkaran
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 39, 39,
                                39), // Warna latar belakang lingkaran
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.heat_pump, // Ikon yang ingin Anda gunakan
                              size: 40.0, // Ukuran ikon
                              color: Colors.white, // Warna ikon
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 80.0, // Lebar lingkaran
                          height: 80.0, // Tinggi lingkaran
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 39, 39,
                                39), // Warna latar belakang lingkaran
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.face, // Ikon yang ingin Anda gunakan
                              size: 40.0, // Ukuran ikon
                              color: Colors.white, // Warna ikon
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 80.0, // Lebar lingkaran
                          height: 80.0, // Tinggi lingkaran
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 39, 39,
                                39), // Warna latar belakang lingkaran
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.favorite, // Ikon yang ingin Anda gunakan
                              size: 40.0, // Ukuran ikon
                              color: Colors.white, // Warna ikon
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 80.0, // Lebar lingkaran
                          height: 80.0, // Tinggi lingkaran
                          decoration: const BoxDecoration(
                            shape: BoxShape.circle,
                            color: Color.fromARGB(255, 39, 39,
                                39), // Warna latar belakang lingkaran
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.star, // Ikon yang ingin Anda gunakan
                              size: 40.0, // Ukuran ikon
                              color: Colors.white, // Warna ikon
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Daily',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Ranking',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Genres',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Fan Translation',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, right: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Settings',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.chevron_right,
                        color: Colors.white,
                      ))
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "images/facebook.png",
                  width: 30,
                ),
                const SizedBox(
                  width: 30,
                ),
                Image.asset(
                  "images/instagram.png",
                  width: 30,
                ),
                const SizedBox(
                  width: 30,
                ),
                Image.asset(
                  "images/twitter.png",
                  width: 30,
                )
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            Center(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.grey, // Warna border hitam
                    width: 2.0, // Ketebalan border (2.0 px)
                  ),
                ),
                padding: const EdgeInsets.all(
                    10.0), // Padding untuk memberi ruang antara teks dan border
                child: const Text(
                  'Share WEBTOON',
                  style: TextStyle(fontSize: 14.0, color: Colors.grey),
                ),
              ),
            ),
            const SizedBox(
              height: 100,
            ),
          ],
        ),
      ),
    );
  }
}

class TopSeries extends StatelessWidget {
  final String seriesNumber;
  final String imageAsset;

  const TopSeries(
      {super.key, required this.seriesNumber, required this.imageAsset});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 12,
        ),
        Text(
          seriesNumber,
          style: const TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
        ),
        const SizedBox(
          width: 12,
        ),
        Image.asset(
          imageAsset,
          width: 40,
        ),
        const SizedBox(
          width: 12,
        ),
        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Perjudulan duniawi",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "Romance",
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 12,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
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

class CardRow extends StatelessWidget {
  final String title;
  final String genre;
  final String imagePath;

  const CardRow({
    super.key,
    required this.title,
    required this.genre,
    required this.imagePath,
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
            ],
          ),
        ],
      ),
    );
  }
}
