import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

void showAddBottomSheet(context, double widthButton) {
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
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {
                    //Navigator.pushNamed(context, '/login');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/camera.svg',
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(width: 10,),
                      Text(
                        'Camera',
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              //const SizedBox(width: 9),
              Container(
                width: widthButton,
                height: 52,
                margin: const EdgeInsets.only(top: 20),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 2),
                  color: Colors.white,
                ),
                child: TextButton(
                  onPressed: () {
                    //Navigator.pushNamed(context, '/registration');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/gallery.svg',
                        width: 20,
                        height: 20,
                      ),
                      SizedBox(width: 10,),
                      Text(
                        'Gallery',
                        style: GoogleFonts.roboto(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
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
