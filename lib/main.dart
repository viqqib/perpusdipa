import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home.dart';
import 'login_page.dart'; // Make sure to import the login_page.dart file

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 35, top: 80),
                child: Text(
                  'Welcome To',
                  style: GoogleFonts.poppins(
                    fontSize: 28,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF8699FF),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 35),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'Dipa',
                        style: GoogleFonts.poppins(
                          fontSize: 45,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFFDAB86B),
                        ),
                      ),
                      TextSpan(
                        text: 'Perpus.',
                        style: GoogleFonts.poppins(
                          fontSize: 45,
                          fontWeight: FontWeight.w700,
                          color: Color(0xFF8699FF),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25),
              // Gambar ilustrasi
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(10),
                child: Image.network(
                  'https://i.imgur.com/OrCFpi8.png',
                  height: 330,
                  fit: BoxFit.cover,
                ),
              ),
              // Box Start
            ],
          ),
          Positioned(
            top: 535,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFF8699FF),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    // Deskripsi aplikasi (ganti dengan deskripsi yang sesuai)
                    Padding(
                      padding: EdgeInsets.only(top: 20, left: 20, right: 5),
                      child: Text(
                        'DipaPerpus membawa perpustakaan universitas ke genggamanmu. Mulailah petualangan literasi kamu sekarang!',
                        style: GoogleFonts.poppins(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.w300,
                        ),
                      ),
                    ),
                    SizedBox(height: 40),
                    // Tombol "Buka Buku"
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        minimumSize: Size(330, 60),
                      ),
                      child: Text(
                        'Buka Buku',
                        style: GoogleFonts.poppins(
                          fontSize: 24,
                          color: Color(0xFF8699FF),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
