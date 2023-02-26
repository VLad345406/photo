import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:photo/screens/main_screens/bottom_navigation_bar.dart';
import 'package:photo/screens/main_screens/photo_open.dart';

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
      body: ListView.builder(
          itemCount: 5,
          itemBuilder: (BuildContext context, int index) {
            if (index == 0) {
              return Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
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
                  ),
                  SizedBox(
                    height: screenWidth - 32 + 16 + 52,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index){
                        return Container(
                          width: screenWidth - 32,
                          margin: const EdgeInsets.only(left: 16, top: 24, right: 16),
                          child: Column(
                            children: [
                              GestureDetector(
                                onScaleStart: (ScaleStartDetails details){
                                  Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoOpen(path: 'assets/images/start_background.jpg')));
                                },
                                child: Container(
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
                              ),
                              Container(
                                margin: const EdgeInsets.only(top: 16),
                                alignment: Alignment.bottomLeft,
                                child: Image.asset('assets/images/user.png'),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: Container(
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
                  ),
                ],
              );
            }
            else {
              return Column(
                children: [
                  GestureDetector(
                    onScaleStart: (ScaleStartDetails details){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoOpen(path: 'assets/images/start_background.jpg')));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(top: 24, left: 16, right: 16),
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
                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 16, left: 16),
                    alignment: Alignment.bottomLeft,
                    child: Image.asset('assets/images/user.png'),
                  ),
                ],
              );
            }
          }),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
