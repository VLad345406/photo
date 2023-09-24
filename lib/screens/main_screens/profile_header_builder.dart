import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../start_screen.dart';

class ProfileHeaderBuilder extends StatefulWidget {
  final String mode;

  const ProfileHeaderBuilder({Key? key, required this.mode}) : super(key: key);

  @override
  State<ProfileHeaderBuilder> createState() => _ProfileHeaderBuilder();
}

class _ProfileHeaderBuilder extends State<ProfileHeaderBuilder> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;

    if (widget.mode == 'individual') {
      return Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 32),
            child: CircleAvatar(
              radius: 64,
              backgroundImage: AssetImage("assets/images/avatar1.jpg"),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 32),
              child: Text(
                'Tom',
                style: GoogleFonts.comfortaa(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Clipboard.setData(ClipboardData(text: "@TomProfile1"));
                print("success copied");
              },
              child: Container(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  '@TomProfile1',
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                "SAN FRANCISCO, CA",
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
          Container(
            width: screenWidth - 32,
            height: 52,
            margin: const EdgeInsets.only(top: 32, left: 16, right: 16),
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(6),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/edit_profile');
              },
              child: Text(
                'EDIT PROFILE',
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Container(
            width: screenWidth - 32,
            height: 52,
            margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(6),
            ),
            child: TextButton(
              onPressed: () {
                FirebaseAuth.instance.signOut();
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) {
                  return StartScreen();
                }), (route) => false);
              },
              child: Text(
                'EXIT PROFILE',
                style: GoogleFonts.roboto(
                  color: Colors.red,
                  fontSize: 13,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Container(
            width: screenWidth - 32,
            height: 52,
            margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(6),
            ),
            child: TextButton(
              onPressed: () async {
                FirebaseAuth.instance.authStateChanges().listen((
                    User? user) {
                  user?.delete();
                });
                Navigator.pushAndRemoveUntil(context,
                    MaterialPageRoute(builder: (context) {
                      return StartScreen();
                    }), (route) => false);
              },
              child: Text(
                'REMOVE ACCOUNT',
                style: GoogleFonts.roboto(
                  color: Colors.red,
                  fontSize: 13,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      return Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 32),
            child: CircleAvatar(
              radius: 64,
              backgroundImage: AssetImage("assets/images/avatar1.jpg"),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 32),
              child: Text(
                'Tom',
                style: GoogleFonts.comfortaa(
                  color: Colors.black,
                  fontSize: 36,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Center(
            child: GestureDetector(
              onTap: () {
                Clipboard.setData(ClipboardData(text: "@TomProfile1"));
                print("success copied");
              },
              child: Container(
                padding: EdgeInsets.only(top: 16),
                child: Text(
                  '@TomProfile1',
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w900,
                  ),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                "SAN FRANCISCO, CA",
                style: GoogleFonts.roboto(
                    color: Colors.black,
                    fontSize: 13,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
          Container(
            width: screenWidth - 32,
            height: 52,
            margin: const EdgeInsets.only(top: 32, left: 16, right: 16),
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(6),
              color: Colors.black,
            ),
            child: TextButton(
              onPressed: () {
                print("FOLLOW");
              },
              child: Text(
                'FOLLOW',
                style: GoogleFonts.roboto(
                  color: Colors.white,
                  fontSize: 13,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Container(
            width: screenWidth - 32,
            height: 52,
            margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
            decoration: BoxDecoration(
              border: Border.all(width: 2),
              borderRadius: BorderRadius.circular(6),
            ),
            child: TextButton(
              onPressed: () {
                print("MESSAGE");
              },
              child: Text(
                'MESSAGE',
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
  }
}
