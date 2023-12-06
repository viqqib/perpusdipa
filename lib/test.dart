import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart'; // Add this line

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0; // Define _currentIndex here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          // Header Section
          Center(
            child: Container(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
              color: Colors.white,
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Dipa',
                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFDAB86B),
                      ),
                    ),
                    TextSpan(
                      text: 'Perpus.',
                      style: GoogleFonts.poppins(
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF8699FF),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Search Bar Section
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: TextField(
              style: TextStyle(color: Colors.black),
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFE3E1E1).withOpacity(0.5),
                hintText: 'Search Book',
                hintStyle: TextStyle(color: Colors.grey),
                contentPadding: EdgeInsets.all(10),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,
                ),
                suffixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
              ),
            ),
          ),
          // Book List Section
          Container(
            margin: EdgeInsets.only(
              top: 20,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Top Book Section
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Text(
                    'Buku Ney <3',
                    style: GoogleFonts.poppins(
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF8699FF),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20, 7, 20, 20),
                  child: Container(
                    height: 210,
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          BookItem(
                            coverUrl: 'https://i.imgur.com/tmsNQDn.jpeg',
                            title: 'Book 1 HHGXHGHXA h',
                          ),
                          SizedBox(width: 8),
                          BookItem(
                            coverUrl: 'https://i.imgur.com/OrCFpi8.png',
                            title: 'Book 2',
                          ),
                          SizedBox(width: 8),
                          BookItem(
                            coverUrl: 'https://i.imgur.com/tmsNQDn.jpeg',
                            title: 'Book 3',
                          ),
                          SizedBox(width: 8),
                          BookItem(
                            coverUrl: 'https://i.imgur.com/tmsNQDn.jpeg',
                            title: 'Book 4',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                // Category Section
                // ...

// Bagian Daftar Buku
                Container(
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Bagian Buku Teratas
                      // ... (your existing book section)

                      // Bagian Kategori
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 25),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Column(
                                    children: [
                                      // Placeholder for the category box
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFE3E1E1),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons
                                                .category, // Replace with your category icon
                                            size: 30,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      // Placeholder for the category text
                                      Text(
                                        'Novel', // Replace with your category text
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                // You can add more category boxes and text as needed
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 15),
                                  child: Column(
                                    children: [
                                      // Placeholder for the category box
                                      Container(
                                        width: 50,
                                        height: 50,
                                        decoration: BoxDecoration(
                                          color: Color(0xFFE3E1E1),
                                          borderRadius:
                                              BorderRadius.circular(15),
                                        ),
                                        child: Center(
                                          child: Icon(
                                            Icons
                                                .category, // Replace with your category icon
                                            size: 30,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      // Placeholder for the category text
                                      Text(
                                        'Science', // Replace with your category text
                                        style: GoogleFonts.poppins(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

// ...
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        color: Color(0xFF8699FF),
        child: Padding(
          padding: EdgeInsets.all(15),
          child: GNav(
            backgroundColor: Color(0xFF8699FF),
            activeColor: Colors.white,
            gap: 20,
            tabBackgroundColor: Color(0xFF6E82EF),
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.book,
                text: 'Book',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              ),
            ],
            selectedIndex: _currentIndex,
            onTabChange: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}

class BookItem extends StatelessWidget {
  final String coverUrl;
  final String title;

  const BookItem({required this.coverUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5),
      width: 110,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(5),
            child: Image.network(
              coverUrl,
              width: 110,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Container(
            width: 110,
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.poppins(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
