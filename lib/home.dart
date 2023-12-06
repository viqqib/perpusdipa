import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
      body: SingleChildScrollView(
        child: Column(
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
                top: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      'Book For You',
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF8699FF),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 7, 20, 0),
                    child: Container(
                      height: 220,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            BookItem(
                              coverUrl:
                                  'https://docs.flutter.dev/assets/images/docs/cover/beginning-app-development-with-flutter.jpg',
                              title: 'Beginning App Develop...',
                            ),
                            SizedBox(width: 8),
                            BookItem(
                              coverUrl:
                                  'https://cdn.syncfusion.com/content/images/downloads/ebook/flutter-succinctly.png',
                              title: 'Flutter Succinctly',
                            ),
                            SizedBox(width: 8),
                            BookItem(
                              coverUrl:
                                  'https://img.perlego.com/books/RM_Books/taylor_francis_lm_feonmi/9781000427103_300_450.webp',
                              title: 'Pragmatic Flutter',
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
                ],
              ),
            ),
            // Top Book Section
            Container(
              margin: EdgeInsets.only(
                top: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      'Popular Book',
                      style: GoogleFonts.poppins(
                        fontSize: 22,
                        fontWeight: FontWeight.w600,
                        color: Color(0xFF8699FF),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(20, 7, 20, 0),
                    child: Container(
                      height: 220,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            BookItem(
                              coverUrl:
                                  'https://images-na.ssl-images-amazon.com/images/S/compressed.photo.goodreads.com/books/1655763205i/59903026.jpg',
                              title: 'Alster Lake',
                            ),
                            SizedBox(width: 8),
                            BookItem(
                              coverUrl: 'https://i.imgur.com/0A83W3q.jpg',
                              title: 'Hujan',
                            ),
                            SizedBox(width: 8),
                            BookItem(
                              coverUrl:
                                  'https://images.booksense.com/images/972/545/9798629545972.jpg',
                              title: 'Sherlock Holmes',
                            ),
                            SizedBox(width: 8),
                            BookItem(
                              coverUrl: 'https://i.imgur.com/0A83W3q.jpg',
                              title: 'Hujan',
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(25, 0, 0, 0),
              child: Text(
                'Categories',
                style: GoogleFonts.poppins(
                  // Updated font
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF8699FF),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        // Placeholder for the category box
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons
                                  .flask, // Replace with your category icon
                              size: 40,
                              color: Color(0xFF6BF178),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        // Placeholder for the category text
                        Text(
                          'Science', // Replace with your category text
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        // You can add more category boxes and text as needed
                      ],
                    ),
                  ),

                  //Computer
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        // Placeholder for the category box
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.microchip,
                              size: 40,
                              color: Colors.orange,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        // Placeholder for the category text
                        Text(
                          'Tech', // Replace with your category text
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        // You can add more category boxes and text as needed
                      ],
                    ),
                  ),

                  //music
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        // Placeholder for the category box
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.music,
                              size: 40,
                              color: Color(0xFF0B5563),
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        // Placeholder for the category text
                        Text(
                          'Music', // Replace with your category text
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        // You can add more category boxes and text as needed
                      ],
                    ),
                  ),

                  //
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        // Placeholder for the category box
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                            child: FaIcon(
                              FontAwesomeIcons.solidHeart,
                              size: 40,
                              color: Colors.red,
                            ),
                          ),
                        ),
                        SizedBox(height: 5),
                        // Placeholder for the category text
                        Text(
                          'Novel', // Replace with your category text
                          style: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        // You can add more category boxes and text as needed
                      ],
                    ),
                  ),

                  //
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        color: Color(0xFF8699FF),
        child: Padding(
          padding: EdgeInsets.all(10),
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
              height: 160,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 5),
          Text(
            textAlign: TextAlign.center,
            title,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
