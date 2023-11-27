import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 35, top: 100),
              child: Text(
                'Welcome To',
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
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
                      style: TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFDAB86B),
                      ),
                    ),
                    TextSpan(
                      text: 'Perpus.',
                      style: TextStyle(
                        fontSize: 36,
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
            // Box deskripsi
            Expanded(
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
                        padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                        child: Text(
                          'DipaPerpus membawa perpustakaan universitas ke genggaman Anda. Mulailah petualangan literasi Anda sekarang!',
                          style: GoogleFonts.poppins(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ),
                      SizedBox(height: 70),
                      // Tombol "Buka Buku"
                      ElevatedButton(
                        onPressed: () {
                          // Tindakan yang diambil saat tombol ditekan
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          minimumSize: Size(330, 55),
                        ),
                        child: Text(
                          'Buka Buku',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF8699FF),
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
      ),
    );
  }
}
