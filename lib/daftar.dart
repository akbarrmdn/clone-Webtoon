import 'package:flutter/material.dart';

class RegistrationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 27, 27),
      appBar: AppBar(
        elevation: 1,
        backgroundColor: const Color.fromARGB(255, 51, 51, 51),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
        centerTitle: true,
        title: const Text(
          'Daftar',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ), // Judul AppBar
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 12,
            ),
            const Text(
              "ALAMAT EMAIL *",
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 12,
            ),
            const TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                  ),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              ),
            ),
            const SizedBox(
              height: 18,
            ),
            const Row(
              children: [
                Text(
                  "KATA SANDI *",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.left,
                ),
                Spacer(),
                Text(
                  "KUAT (?)",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            const TextField(
              obscureText: true,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                  ),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              '6-16 karakter',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(
              height: 22,
            ),
            const Text(
              "MASUKAN KEMBALI KATA SANDI *",
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 12,
            ),
            const TextField(
              obscureText: true,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                  ),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              '6-16 karakter',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(
              height: 22,
            ),
            const Text(
              "NAMA PANGGILAN *",
              style: TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.left,
            ),
            const SizedBox(
              height: 12,
            ),
            const TextField(
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.blueGrey, width: 2.0),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueGrey,
                  ),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'Maks. 20karakter',
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            const SizedBox(
              height: 22,
            ),
            RichText(
              text: const TextSpan(
                text: 'Dengan Mendaftar, kamu menyetujui',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ), // Gaya teks default
                children: <TextSpan>[
                  TextSpan(
                    text: 'Syarat Penggunaan',
                    style: TextStyle(
                      color: Colors.blue,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(text: ' dan '),
                  TextSpan(
                    text: 'Kebijakan Privasi',
                    style: TextStyle(
                      color: Colors.blue,
                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: ' dan LINE WEBTOON.',
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            RichText(
              text: const TextSpan(
                text:
                    'LINE WEBTOON mengumpulkan dan memproses alamat emailmu untuk tujuan promosi. Kamu dapat berhenti berlangganan kapan saja dengan mudah melalui link yang tertera di email promosi.',
                style: TextStyle(
                  fontSize: 12,
                  color: Colors.grey,
                ), // Gaya teks default
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/d');
          },
          child: const Text(
            'Daftar SEKARANG!',
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
