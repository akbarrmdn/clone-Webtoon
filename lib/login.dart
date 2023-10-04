import 'dart:ui';

import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 27, 27, 27),
        appBar: AppBar(
          elevation: 0.5,
          backgroundColor: Color.fromARGB(255, 27, 27, 27),
          title: Center(
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
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              TextField(
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
              SizedBox(height: 16.0), // Spasi antara email dan password
              TextField(
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
              SizedBox(height: 16.0), // Spasi antara password dan tombol
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Aksi ketika tombol login ditekan
                    },
                    child: Container(
                      // Menggunakan Container untuk mengatur lebar tombol
                      width: 140, // Ubah lebar sesuai kebutuhan
                      height: 45,
                      child: Center(
                        // Untuk mengatur teks di tengah tombol
                        child: Text(
                          'DAFTAR',
                          style: TextStyle(
                              fontSize:
                                  16), // Ubah ukuran teks sesuai kebutuhan
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary:
                          Colors.grey, // Ubah warna tombol sesuai kebutuhan
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            8), // Ubah bentuk sesuai kebutuhan
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi ketika tombol login ditekan
                    },
                    child: Container(
                      width: 140,
                      height: 45,
                      child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 14,
              ),
              Center(
                  child: Text(
                'Lupa kata sandi?',
                style: TextStyle(color: Colors.grey),
              )),
              SizedBox(
                height: 20,
              ),
              Row(
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
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment
                    .spaceBetween, // Untuk mengatur jarak antara gambar
                children: [
                  Image.asset('images/facebook.png', width: 40, height: 40),
                  Image.asset('images/instagram.png', width: 40, height: 40),
                  Image.asset('images/line.png', width: 40, height: 40),
                  Image.asset('images/twitter.png', width: 40, height: 40),
                  Image.asset('images/apple (1).png', width: 40, height: 40),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
