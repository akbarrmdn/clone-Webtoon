import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:webtoon/daftar.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 27, 27, 27),
        appBar: AppBar(
          elevation: 0.5,
          backgroundColor: const Color.fromARGB(255, 51, 51, 51),
          title: const Center(
            child: Text(
              'Masuk',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  // Menggunakan fungsi _getIconData

                  labelStyle: TextStyle(color: Colors.white),
                  // Tambahkan suffixIcon jika ini input password
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                ),
              ),
              const SizedBox(height: 16.0), // Spasi antara email dan password
              const TextField(
                obscureText: true, // Untuk menyembunyikan password
                decoration: InputDecoration(
                  labelText: 'Password',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blueGrey, width: 2.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.blueGrey,
                    ),
                  ),
                  labelStyle: TextStyle(color: Colors.white),
                  // Menggunakan fungsi _getIconData
                  // Tambahkan suffixIcon jika ini input password
                  contentPadding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 16.0),
                ),
              ),
              const SizedBox(height: 16.0), // Spasi antara password dan tombol
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/g');
                    },
                    style: ElevatedButton.styleFrom(
                      primary:
                          Colors.grey, // Ubah warna tombol sesuai kebutuhan
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8), // Ubah bentuk sesuai kebutuhan
                      ),
                    ),
                    child: Container(
                      // Menggunakan Container untuk mengatur lebar tombol
                      width: 140, // Ubah lebar sesuai kebutuhan
                      height: 45,
                      child: const Center(
                        // Untuk mengatur teks di tengah tombol
                        child: Text(
                          'DAFTAR',
                          style: TextStyle(
                              fontSize:
                                  16), // Ubah ukuran teks sesuai kebutuhan
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi ketika tombol login ditekan
                      Navigator.pushNamed(context, '/e');
                    },
                    child: Container(
                      width: 140,
                      height: 45,
                      child: const Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 14,
              ),
              const Center(
                  child: Text(
                'Lupa kata sandi?',
                style: TextStyle(color: Colors.grey),
              )),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Expanded(
                      child: Divider(
                    color: Colors.grey,
                  )),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Atau Masuk Dengan',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Expanded(child: Divider(color: Colors.grey)),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Untuk mengatur jarak antara gambar
                children: [
                  Image.asset('images/facebook.png', width: 50, height: 50),
                  Image.asset('images/instagram.png', width: 55, height: 55),
                  Image.asset('images/line.png', width: 50, height: 50),
                  Image.asset('images/twitter.png', width: 50, height: 50),
                  Image.asset('images/apple (1).png', width: 50, height: 50),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: const Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Syarat Penggunaan',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Text(
                  'Webtoon Entertaiment Inc.',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
                Text(
                  'Privasi',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            )),
      ),
    );
  }
}
