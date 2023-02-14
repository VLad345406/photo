import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PhotoOpen extends StatefulWidget {
  const PhotoOpen({super.key});

  @override
  State<PhotoOpen> createState() => _PhotoOpenState();
}

class _PhotoOpenState extends State<PhotoOpen> {
  @override
  Widget build(BuildContext context) {

    //get screen ppi
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    final widthButton = (screenWidth - 32 - 9) / 2;

    return Scaffold(

    );
  }
}
