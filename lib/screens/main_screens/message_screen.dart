import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:photo/screens/main_screens/bottom_navigation_bar.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    final List<String> users = [
      "Tom",
      "Alice",
      "Sam",
      "Bob",
      "Kate",
      "Tom",
      "Alice",
      "Sam",
      "Bob",
      "Kate",
      "Tom",
      "Alice",
      "Sam",
      "Bob",
      "Kate"
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Chats',
          style: GoogleFonts.comfortaa(
            color: Colors.black,
            fontSize: 36,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: screenHeight - 158,
            child: ListView.separated(
              scrollDirection: Axis.vertical,
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    print("Tap $index");
                  },
                  child: Container(
                    margin: const EdgeInsets.only(left: 16, top: 16, bottom: 16),
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 32,
                          backgroundImage:
                              AssetImage("assets/images/avatar1.jpg"),
                        ),
                        Container(
                          height: 64,
                          padding: const EdgeInsets.only(left: 16),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  users[index],
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 6),
                                child: Text(
                                  'Thank you! That was very helpful!',
                                  style: GoogleFonts.roboto(
                                    color: Colors.black,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) => Divider(
                color: Colors.grey,
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: const BottomMenu(),
    );
  }
}
