import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/services.dart';

import 'package:photo/screens/main_screens/bottom_navigation_bar.dart';
import 'package:photo/screens/main_screens/photo_open.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    final List<String> photoArray = ["picture1.jpg", "picture2.jpg", "picture3.jpg", "picture4.jpg", "picture5.jpg", "picture5.jpg"];
    int _countPicures = 5;

    return Scaffold(
      backgroundColor: Colors.white,
      /*appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Profile',
          style: GoogleFonts.comfortaa(
            color: Colors.black,
            fontSize: 36,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),*/
      body: ListView.builder(
        //itemCount: photoArray.length + 2,
        itemCount: photoArray.length > 5 ? (_countPicures + 2): (photoArray.length + 2),
        itemBuilder: (BuildContext context, int index) {
          if (index == 0) {
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
                    onTap: (){
                      Clipboard.setData(ClipboardData(text: "@TomProfile1"));
                      print("sucess copied");
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
                          fontWeight: FontWeight.w900
                      ),
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
                      print("EDIT PROFILE");
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
              ],
            );
          }
          else if (index < photoArray.length + 1 && index < _countPicures + 1){
            return GestureDetector(
              onScaleStart: (ScaleStartDetails details){
                Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoOpen(path: 'assets/images/Profile1/${photoArray[index - 1]}')));
              },
              /*onTap: (){
                //Navigator.pushNamed(context, '/photo_open');
                // PhotoOpen(path: 'assets/images/Profile1/${photoArray[index - 1]}');
                Navigator.push(context, MaterialPageRoute(builder: (context) => PhotoOpen(path: 'assets/images/Profile1/${photoArray[index - 1]}')));
              },*/
              child: Container(
                margin: const EdgeInsets.only(top: 32, left: 16, right: 16),
                height: screenWidth - 32,
                width: screenWidth - 32,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      'assets/images/Profile1/${photoArray[index - 1]}',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            );
          }
          else if (photoArray.length > 5) {
            return Container(
              height: 52,
              margin: const EdgeInsets.only(top: 32, left: 16, right: 16),
              decoration: BoxDecoration(
                border: Border.all(width: 2),
                borderRadius: BorderRadius.circular(6),
              ),
              child: TextButton(
                onPressed: () {
                  _countPicures += 5;
                  setState(() {});
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
            );
          }
        },
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
