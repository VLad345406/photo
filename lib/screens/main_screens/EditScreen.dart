import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    //final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Edit profile',
          style: GoogleFonts.comfortaa(
            color: Colors.black,
            fontSize: 36,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 16),
              child: Text(
                'CHANGE AVATAR',
                style: GoogleFonts.roboto(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              padding: EdgeInsets.only(top: 16),
              child: GestureDetector(
                onTap: (){
                  print("Change avatar");
                },
                child: CircleAvatar(
                  radius: 64,
                  backgroundImage: AssetImage("assets/images/avatar1.jpg"),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: TextButton(
              onPressed: () {
                print("Change email");
              },
              child: Text(
                'Change email',
                style: GoogleFonts.comfortaa(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: TextButton(
              onPressed: () {
                print("Change nick");
              },
              child: Text(
                'Change nick',
                style: GoogleFonts.comfortaa(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: TextButton(
              onPressed: () { 
                print("Change password");
              },
              child: Text(
                'Change password',
                style: GoogleFonts.comfortaa(
                  color: Colors.black,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: TextButton(
              onPressed: () {
                print("Delete account");
              },
              child: Text(
                'Delete account',
                style: GoogleFonts.comfortaa(
                  color: Colors.red,
                  fontSize: 13,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
