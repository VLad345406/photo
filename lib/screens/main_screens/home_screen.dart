import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo/screens/main_screens/bottom_navigation_bar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    final widthButton = screenWidth - 32;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Discover',
          style: GoogleFonts.comfortaa(
            color: Colors.black,
            fontSize: 36,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 16, top: 32),
            child: Text(
              "WHAT'S NEW TODAY",
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),

          SizedBox(
            height: screenWidth - 32 + 16 + 52,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: screenWidth - 32,
                  margin: const EdgeInsets.only(left: 16, top: 24, right: 16),
                  child: Column(
                    children: [
                      Container(
                        height: screenWidth - 32,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/start_background.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 16),
                        alignment: Alignment.bottomLeft,
                        child: Image.asset('assets/images/user.png'),
                      ),
                    ],
                  ),
                ),Container(
                  width: screenWidth - 32,
                  margin: const EdgeInsets.only(left: 16, top: 24, right: 16),
                  child: Column(
                    children: [
                      Container(
                        height: screenWidth - 32,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              "assets/images/start_background.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 16),
                        alignment: Alignment.bottomLeft,
                        child: Image.asset('assets/images/user.png'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          Container(
            margin: const EdgeInsets.only(left: 16, top: 48),
            child: Text(
              'BROWSE ALL',
              style: GoogleFonts.roboto(
                color: Colors.black,
                fontSize: 13,
                fontWeight: FontWeight.w900,
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.only(top: 24, left: 16, right: 16),
            height: screenWidth - 32,
            width: screenWidth - 32,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/start_background.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 24, left: 16, right: 16),
            height: screenWidth - 32,
            width: screenWidth - 32,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/start_background.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 24, left: 16, right: 16),
            height: screenWidth - 32,
            width: screenWidth - 32,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/start_background.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 24, left: 16, right: 16),
            height: screenWidth - 32,
            width: screenWidth - 32,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/start_background.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),

          Container(
            width: widthButton,
            height: 52,
            margin: const EdgeInsets.only(top: 32, left: 16, right: 16),
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(6),
            ),
            child: TextButton(
              onPressed: () {
                //Navigator.pushNamed(context, '/login');
              },
              child: Text(
                'SEE MORE',
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
