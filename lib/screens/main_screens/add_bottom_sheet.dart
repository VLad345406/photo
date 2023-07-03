import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

void showAddBottomSheet(context, double widthButton)
{
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
