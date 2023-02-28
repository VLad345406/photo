import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class BottomMenu extends StatefulWidget {
  const BottomMenu({super.key});

  @override
  State<BottomMenu> createState() => _BottomMenuState();
}

class _BottomMenuState extends State<BottomMenu> {
  @override
  Widget build(BuildContext context) {

    final screenWidth = MediaQuery.of(context).size.width;

    final widthButton = (screenWidth - 32 - 9) / 2;

    final screens = [
      '/home',
      '/search',
      '/add',
      '/message',
      '/individual_profile'
    ];

    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: Colors.white,
      type: BottomNavigationBarType.fixed,
      onTap: (index) {
        if(screens[index] == '/add'){
          showMaterialModalBottomSheet<dynamic>(
            context: context,
            builder: (context) => SizedBox(
              height: 150,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 16, top: 16),
                    child: Text(
                      'Add photo',
                      style: GoogleFonts.comfortaa(
                        color: Colors.black,
                        fontSize: 36,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        width: widthButton,
                        height: 52,
                        margin: const EdgeInsets.only(
                          top: 20,
                          left: 16,
                          right: 9,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(width: 2),
                          borderRadius: BorderRadius.circular(6),
                        ),
                        child: TextButton(
                          onPressed: () {
                            //Navigator.pushNamed(context, '/login');
                          },
                          child: Text(
                            'Camera',
                            style: GoogleFonts.roboto(
                              color: Colors.black,
                              fontSize: 13,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                      //const SizedBox(width: 9),
                      Container(
                        width: widthButton,
                        height: 52,
                        margin: const EdgeInsets.only(top: 20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          border: Border.all(width: 2),
                          color: Colors.black,
                        ),
                        child: TextButton(
                          onPressed: () {
                            //Navigator.pushNamed(context, '/registration');
                          },
                          child: Text(
                            'Gallery',
                            style: GoogleFonts.roboto(
                              color: Colors.white,
                              fontSize: 13,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
        else {
          Navigator.pushNamed(context, screens[index]);
        }
      },
      items:[
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/tab_bar/toolbar_home.svg',
          ),
          label: 'Discover',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/tab_bar/toolbar_search.svg',
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Image.asset('assets/tab_bar/toolbar_add.png'),
          label: 'Add',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/tab_bar/toolbar_massage.svg',
          ),
          label: 'Massage',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset(
            'assets/tab_bar/toolbar_profile.svg',
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}
