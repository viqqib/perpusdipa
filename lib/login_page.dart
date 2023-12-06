import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home.dart'; // Make sure to import the home.dart file

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://i.imgur.com/LEmIWgN.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 300,
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50),
                  topRight: Radius.circular(50),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(30),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // "Sign In" text
                    Padding(
                      padding: EdgeInsets.only(left: 20, bottom: 20, top: 20),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Sign In',
                          style: GoogleFonts.poppins(
                            fontSize: 45,
                            color: Color(0xFF8699FF),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),

                    // Username form
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'NIM :',
                            style: GoogleFonts.poppins(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF8699FF),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: 310,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFFF0EEEE),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: Icon(Icons.person, color: Colors.grey),
                                ),
                                Expanded(
                                  child: TextField(
                                    style: GoogleFonts.poppins(
                                      fontSize: 17,
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: '',
                                      hintStyle: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFF8699FF),
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),

                    // Password form
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Password :',
                            style: GoogleFonts.poppins(
                              fontSize: 22,
                              fontWeight: FontWeight.w500,
                              color: Color(0xFF8699FF),
                            ),
                          ),
                          SizedBox(height: 10),
                          Container(
                            width: 310,
                            height: 60,
                            decoration: BoxDecoration(
                              color: Color(0xFFF0EEEE),
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: 20,
                                  ),
                                  child: Icon(Icons.lock, color: Colors.grey),
                                ),
                                Expanded(
                                  child: TextField(
                                    obscureText: true, // for password input
                                    style: GoogleFonts.poppins(
                                      fontSize: 17,
                                      color: Colors.black,
                                    ),
                                    decoration: InputDecoration(
                                      hintText: '',
                                      hintStyle: TextStyle(
                                        fontSize: 16,
                                        color: Colors.grey,
                                      ),
                                      border: InputBorder.none,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 50),

                    // Login button
                    ElevatedButton(
                      onPressed: () {
                        // Navigate to the home page
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  HomePage()), // Replace HomePage with the actual name of your home page class
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF8699FF), // Mengganti warna button
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                        minimumSize: Size(310, 65), // Mengganti ukuran button
                      ),
                      child: Text(
                        'Login',
                        style: GoogleFonts.poppins(
                          fontSize: 25,
                          color: Colors.white, // Mengganti warna teks
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
